import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:monotone_flutter/application/scene.dart';
import 'package:monotone_flutter/application/scene_transition.dart';
import 'package:monotone_flutter/screens/photo_list/photo_details_screen.dart';
import 'package:monotone_flutter/screens/photo_list/photo_list_screen.dart';

class SceneFactory{
  static Route<dynamic> createRoute(String name, Map<String, dynamic> args){

    Widget widget;

    if(name == Scene.photoList.path){
      widget = PhotoListScreen();
    }
    else if(name == Scene.photoDetails.path){
      widget = PhotoDetailsScreen();
    }
    else{
      // 404 page
    }

    Route route = CupertinoPageRoute(builder: (context) => widget);
    return route;
  }


  static Widget makeRoute(String name){
    return null;
  }
}