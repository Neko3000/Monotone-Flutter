import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:monotone_flutter/components/base_widget_state.dart';

class PhotoDetailsScreen extends StatefulWidget{
  PhotoDetailsScreen({@required Key key, @required this.title}): super(key: key);

  final String title;

  @override
  State<StatefulWidget> createState() => _PhotoDetailScreenState();
}

class _PhotoDetailScreenState extends BaseWidgetState<PhotoDetailsScreen>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return null;
  }

}