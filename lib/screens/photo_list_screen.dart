import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:monotone_flutter/enums/photo/list_order_by.dart';
import 'package:monotone_flutter/enums/photo/unsplash_topic.dart';
import 'package:monotone_flutter/models/photo/photo.dart';


// BlocBuilder<PhotoListBloc,PhotoListState>(
// )

class PhotoListScreen extends StatefulWidget{
  PhotoListScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _PhotoListScreenState createState() => _PhotoListScreenState();
}

class _PhotoListScreenState extends State<PhotoListScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: SafeArea(
            child: Column(
      children: [
        Container(height:300,child:
        Row(
          children: [
            Expanded(
                child: Column(children: [
                  Text(
                    "Unsplash",
                    style: TextStyle(color: Colors.black, fontSize: 36),
                  ),
                  Text(
                    "Beautiful, free photos. Gifted by the world’s most generous community of photographers. 🎁",
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                  Spacer(),
                  Text(
                    "Editorial or Following",
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  )
                ]))
          ],
        )),
        Row()
      ],
    )));
  }
}