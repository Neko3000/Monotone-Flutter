import 'dart:ui';

enum Scene{
  photoList,
  photoDetails
}

extension SceneExtension on Scene{

  String get path{
    switch(this){

      case Scene.photoList:
        return '/photoList';

      case Scene.photoDetails:
        return '/photoDetails';

      default:
        return null;
    }
  }

  static Scene rawValue(String path){

    switch(path){

      case '/photoList':
        return Scene.photoList;

      case '/photoDetails':
        return Scene.photoDetails;

      default:
        return null;
    }
  }
}