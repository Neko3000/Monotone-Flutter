import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:monotone_flutter/enums/photo/list_order_by.dart';
import 'package:monotone_flutter/screens/base_widget_state.dart';
import 'package:monotone_flutter/screens/photo_grid_view_cell.dart';
import 'package:monotone_flutter/screens/photo_list_bloc.dart';
import 'package:monotone_flutter/screens/photo_list_event.dart';
import 'package:monotone_flutter/screens/photo_list_header_view.dart';
import 'package:monotone_flutter/screens/photo_list_jumbotron_view.dart';
import 'package:monotone_flutter/screens/photo_list_state.dart';
import 'package:monotone_flutter/vars/interface_values.dart';

enum PhotoListAnimationState{
  showJumbotronView,
  showHeaderView
}

class PhotoListScreen extends StatefulWidget {
  PhotoListScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _PhotoListScreenState createState() => _PhotoListScreenState();
}

class _PhotoListScreenState extends BaseWidgetState<PhotoListScreen> implements WidgetStateAnimatable {

  EasyRefreshController _easyRefreshController = EasyRefreshController();
  ScrollController _scrollController = ScrollController();

  bool _showJumbotronView = true;
  PhotoListAnimationState _animationState = PhotoListAnimationState.showJumbotronView;

  @override
  void initState() {
    super.initState();

    this.buildAnimation();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (BuildContext context) {
      PhotoListEvent event = PhotoListListOrderByChanged(
          listOrderBy: ListOrderBy.latest);
      return PhotoListBloc()..add(event);
    }, child: Scaffold(body: SafeArea(
      child:
          BlocBuilder<PhotoListBloc, PhotoListState>(builder: (context, state) {
        if (state is PhotoListStateLoadSuccess) {
          this._easyRefreshController.finishRefresh(success: true);
          this._easyRefreshController.finishLoad(success: true);
        } else if (state is PhotoListStateLoadFailure) {
          this._easyRefreshController.finishRefresh(success: false);
          this._easyRefreshController.finishLoad(success: false);
        }

        return Column(
          children: [
            this._renderHeaderView(context, state),
            this._renderPhotoListView(context, state)
          ],
        );
      }),
    )));
  }

  Widget _renderHeaderView(BuildContext context, PhotoListState state) {

    if(this._showJumbotronView){
      return PhotoListJumbotronView();
    }
    else{
      return PhotoListHeaderView();
    }
  }

  Widget _renderPhotoListView(BuildContext context, PhotoListState state) {
    return Container(
        child: Expanded(
      child: EasyRefresh(
        controller: this._easyRefreshController,
        enableControlFinishRefresh: true,
        enableControlFinishLoad: true,
        onRefresh: () async {
          print('onRefresh');
          BlocProvider.of<PhotoListBloc>(context).add(PhotoListReloaded());
        },
        onLoad: () async {
          print('onLoad');
          BlocProvider.of<PhotoListBloc>(context).add(PhotoListMoreLoaded());
        },
        child: StaggeredGridView.countBuilder(
            controller: this._scrollController,
            crossAxisCount: 2,
            itemCount: state.photos.length,
            itemBuilder: (BuildContext context, int index) =>
                PhotoGridViewCell(
                  photo: state.photos[index],
                ),
            staggeredTileBuilder: (int index) => StaggeredTile.count(
                index % 4 == 0 || index % 4 == 3 ? 2 : 1, 1.5)),
      ),
    ));
  }

  @override
  void buildAnimation() {

    this._scrollController.addListener(() {

      if(this._scrollController.position.pixels <= InterfaceValues.showTopContentOffset){
        this.animation(PhotoListAnimationState.showJumbotronView);
      }
      else{
        this.animation(PhotoListAnimationState.showHeaderView);
      }

      print('scrollController position pixels = ${this._scrollController.position.pixels}');
      print('showJumbotronView in addListener is ${this._showJumbotronView.toString()}');
    });

  }

  @override
  void animation(dynamic state) {

    PhotoListAnimationState photoListAnimationState = state as PhotoListAnimationState;

    if(photoListAnimationState == PhotoListAnimationState.showJumbotronView){
      this.setState(() {
        this._showJumbotronView = true;
      });

    }
    else if(photoListAnimationState == PhotoListAnimationState.showHeaderView) {
      this.setState(() {
        this._showJumbotronView = false;
      });
    }

    this._animationState = photoListAnimationState;
  }
}
