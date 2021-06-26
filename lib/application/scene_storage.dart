import 'package:flutter/cupertino.dart';
import 'package:monotone_flutter/screens/photo_list/photo_list_screen.dart';

class SceneStorage{
  static List<Page> pages = [CupertinoPage(child: PhotoListScreen())];
}