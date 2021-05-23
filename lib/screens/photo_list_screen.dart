import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:monotone_flutter/enums/photo/list_order_by.dart';
import 'package:monotone_flutter/enums/photo/unsplash_topic.dart';
import 'package:monotone_flutter/models/photo/photo.dart';
import 'package:monotone_flutter/screens/photo_list_bloc.dart';
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
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BlocProvider(
        create: (BuildContext context) =>
            PhotoListBloc((PhotoListStateInitial())),

        child: Scaffold(body: SafeArea(
          child: BlocBuilder<PhotoListBloc, PhotoListState>(
              builder: (context, state) {

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
                  child: ListView.builder(
                    itemCount: 20,
                    itemExtent: 50,
                    shrinkWrap: false,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(title: Text('$index'));
                    },
                  ),
                ))
              ],
            );
          }),
        )));
  }
}
