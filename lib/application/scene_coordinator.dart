import 'dart:async';
import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:monotone_flutter/application/scene_factory.dart';
import 'package:monotone_flutter/screens/photo_list/photo_details_screen.dart';
import 'package:monotone_flutter/screens/photo_list/photo_list_screen.dart';
import 'package:rxdart/rxdart.dart';
import 'package:monotone_flutter/application/scene.dart';
import 'package:monotone_flutter/application/scene_transition.dart';


class SceneCoordinator extends ChangeNotifier{

  //region Singleton
  static final SceneCoordinator _shared = SceneCoordinator._internal();
  static SceneCoordinator get shared => _shared;
  //endregion

  //region Constructors
  SceneCoordinator._internal(){
    configureRoutes();
  }
  //endregion
  void configureRoutes() {

  }

  Route<dynamic> onGenerateRoute(RouteSettings settings){
    return SceneFactory.createRoute(settings.name, settings.arguments);
  }

  void transition(BuildContext context, SceneTransition type, Scene scene, { Map<String, dynamic>  args,  bool animated = false }){

    if(type == SceneTransition.push){
      Navigator.of(context).pushNamed(scene.path);
    }

    // this.pages.add(CupertinoPage(child: PhotoDetailsScreen()));

    // switch(type){
    //   case SceneTransition.root
    //     Navigator.of(context).pushName
    //     break;
    //   default:
    //     break;
    // }
    // this.router.navigateTo(context, )

  }

  // void pushPage(Page page){
  //
  //   SceneStorage.pages.add(page);
  //   this.pages.add(SceneStorage.pages);
  // }
  //
  // void popPage(Page page){
  //
  //   SceneStorage.pages.remove(page);
  //   this.pages.add(SceneStorage.pages);
  // }
}