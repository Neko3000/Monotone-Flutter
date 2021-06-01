import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:monotone_flutter/enums/photo/list_order_by.dart';
import 'package:monotone_flutter/enums/photo/unsplash_topic.dart';
import 'package:monotone_flutter/models/photo/photo.dart';
import 'package:monotone_flutter/screens/photo_grid_view_cell.dart';
import 'package:monotone_flutter/screens/photo_list_bloc.dart';
import 'package:monotone_flutter/screens/photo_list_event.dart';
import 'package:monotone_flutter/screens/photo_list_state.dart';

// BlocBuilder<PhotoListBloc,PhotoListState>(
// )

class PhotoListScreen extends StatefulWidget {
  PhotoListScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _PhotoListScreenState createState() => _PhotoListScreenState();
}

class _PhotoListScreenState extends State<PhotoListScreen> {
  EasyRefreshController _easyRefreshController = EasyRefreshController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BlocProvider(create: (BuildContext context) {
      PhotoListEvent event = PhotoListListOrderByChanged(
          listOrderBy: ListOrderBy.fromType(ListOrderByType.popular));
      return PhotoListBloc()..add(event);
    }, child: Scaffold(body: SafeArea(
      child:
          BlocBuilder<PhotoListBloc, PhotoListState>(builder: (context, state) {

            if(state is PhotoListStateLoadSuccess){
              this._easyRefreshController.finishRefresh(success: true);
              this._easyRefreshController.finishLoad(success: true);
            }
            else if(state is PhotoListStateLoadFailure){
              this._easyRefreshController.finishRefresh(success: false);
              this._easyRefreshController.finishLoad(success: false);
            }

        return Column(
          children: [
            Container(
                height: 300,
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Column(children: [
                  Container(
                    width: double.infinity,
                    child: Text(
                      "Unsplash",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                      padding: const EdgeInsets.only(right: 55),
                      child: Text(
                        "Beautiful, free photos. Gifted by the world’s most generous community of photographers. 🎁",
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      )),
                  Spacer(),
                  Container(
                    width: double.infinity,
                    child: Text(
                      "Editorial or Following",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ])),
            Container(
                child: Expanded(
              child: EasyRefresh(
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
                    crossAxisCount: 2,
                    itemCount: state.photos.length,
                    itemBuilder: (BuildContext context, int index) =>
                        PhotoGridViewCell(
                          photo: state.photos[index],
                        ),
                    staggeredTileBuilder: (int index) => StaggeredTile.count(
                        index % 4 == 0 || index % 4 == 3 ? 2 : 1, 1.5)),
              ),
            ))
          ],
        );
      }),
    )));
  }
}
