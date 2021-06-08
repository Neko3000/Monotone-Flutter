import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PhotoListHeaderView extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _PhotoListHeaderViewState();
}

class _PhotoListHeaderViewState extends State{

  @override
  Widget build(BuildContext context) {
      return Container(height: 300,
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child:
        Column(children: [
          Container(width: double.infinity, child: CupertinoSearchTextField(placeholder: 'Search',)),
          Spacer(),
          Container(width: double.infinity, height: 35.0, color: Colors.green)
        ]));
  }
}