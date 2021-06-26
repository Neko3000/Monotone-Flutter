import 'dart:async';
import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:monotone_flutter/application/scene_storage.dart';
import 'package:monotone_flutter/screens/photo_list/photo_details_screen.dart';
import 'package:monotone_flutter/screens/photo_list/photo_list_screen.dart';
import 'package:rxdart/rxdart.dart';

enum SceneTransition{
  root,
  push,
  present,
}

enum Scene{
  photoList,
  photoDetails
}

extension SceneExtension on Scene{
  String get path{

    switch(this){
      case Scene.photoList:
        return 'photo/photo_list';
      case Scene.photoDetails:
        return 'photo/photo_details';
      default:
        return '';
    }

  }
}

class SceneCoordinator{

  //region Singleton
  static final SceneCoordinator _shared = SceneCoordinator._internal();
  static SceneCoordinator get shared => _shared;
  //endregion

  //region Constructors
  SceneCoordinator._internal(){
    configureRoutes();
  }
  //endregion

  BehaviorSubject<List<Page>> pages = BehaviorSubject<List<Page>>.seeded(SceneStorage.pages);

  void configureRoutes() {

  }

  void transition(BuildContext context, SceneTransition type, Scene scene, { Map<String, dynamic>  args,  bool animated = false }){

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

  void pushPage(Page page){

    SceneStorage.pages.add(page);
    this.pages.add(SceneStorage.pages);
  }

  void popPage(Page page){

    SceneStorage.pages.remove(page);
    this.pages.add(SceneStorage.pages);
  }
}