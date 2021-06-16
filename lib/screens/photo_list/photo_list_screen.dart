import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:monotone_flutter/enums/photo/list_order_by.dart';
import 'package:monotone_flutter/enums/photo/unsplash_topic.dart';
import 'package:monotone_flutter/components/base_widget_state.dart';
import 'package:monotone_flutter/components/grid_view_cell/photo_grid_view_cell.dart';
import 'package:monotone_flutter/blocs/photo_list/photo_list_bloc.dart';
import 'package:monotone_flutter/blocs/photo_list/photo_list_event.dart';
import 'package:monotone_flutter/components/view/photo_list/photo_list_header_view.dart';
import 'package:monotone_flutter/components/view/photo_list/photo_list_jumbotron_view.dart';
import 'package:monotone_flutter/blocs/photo_list/photo_list_state.dart';
import 'package:monotone_flutter/screens/photo_list/photo_details_screen.dart';
import 'package:monotone_flutter/vars/interface_values.dart';

enum PhotoListAnimationState { showJumbotronView, showHeaderView }

class PhotoListScreen extends StatefulWidget {
  PhotoListScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _PhotoListScreenState createState() => _PhotoListScreenState();
}

class _PhotoListScreenState extends BaseWidgetState<PhotoListScreen> {
  EasyRefreshController _easyRefreshController = EasyRefreshController();
  ScrollController _scrollController = ScrollController();

  bool _showJumbotronView = true;
  PhotoListAnimationState _animationState =
      PhotoListAnimationState.showJumbotronView;

  @override
  void initState() {
    super.initState();

    // BuildAnimation.
    this._buildAnimation();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (BuildContext context) {
      PhotoListEvent event =
          PhotoListListOrderByChanged(listOrderBy: ListOrderBy.latest);
      return PhotoListBloc()..add(event);
    }, child: CupertinoPageScaffold(child: SafeArea(
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
    if (this._showJumbotronView) {
      return PhotoListJumbotronView(
        selectedItemKey: state.selectedItemKey,
        onListOrderByChange: (ListOrderBy listOrderBy) {
          BlocProvider.of<PhotoListBloc>(context)
              .add(PhotoListListOrderByChanged(listOrderBy: listOrderBy));
        },
      );
    } else {
      return PhotoListHeaderView(
        selectedItemKey: state.selectedItemKey,
        onListOrderByChange: (ListOrderBy listOrderBy) {
          BlocProvider.of<PhotoListBloc>(context)
              .add(PhotoListListOrderByChanged(listOrderBy: listOrderBy));
        },
        onTopicChangeCallBack: (UnsplashTopic topic) {
          BlocProvider.of<PhotoListBloc>(context)
              .add(PhotoListTopicChanged(topic: topic));
        },
        onSearchQueryChangeCallBack: (String searchQuery) {
          BlocProvider.of<PhotoListBloc>(context)
              .add(PhotoListSearchQueryChanged(searchQuery: searchQuery));
        },
      );
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
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTapUp: (TapUpDetails details) {
                  // CupertinoPage
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return PhotoDetailsScreen();
                  }));
                },
                child: PhotoGridViewCell(
                  photo: state.photos[index],
                ),
              );
            },
            staggeredTileBuilder: (int index) => StaggeredTile.count(
                index % 4 == 0 || index % 4 == 3 ? 2 : 1, 1.5)),
      ),
    ));
  }

  void _buildAnimation() {
    this._scrollController.addListener(() {
      if (this._scrollController.position.pixels <=
          InterfaceValues.showTopContentOffset) {
        this._animation(PhotoListAnimationState.showJumbotronView);
      } else {
        this._animation(PhotoListAnimationState.showHeaderView);
      }
    });
  }

  void _animation(dynamic state) {
    PhotoListAnimationState photoListAnimationState =
        state as PhotoListAnimationState;

    if (photoListAnimationState == PhotoListAnimationState.showJumbotronView) {
      this.setState(() {
        this._showJumbotronView = true;
      });
    } else if (photoListAnimationState ==
        PhotoListAnimationState.showHeaderView) {
      this.setState(() {
        this._showJumbotronView = false;
      });
    }

    this._animationState = photoListAnimationState;
  }
}
