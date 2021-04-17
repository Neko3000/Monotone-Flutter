import 'package:monotone_flutter/enums/photo/list_order_by.dart';
import 'package:monotone_flutter/enums/photo/unsplash_topic.dart';
import 'package:monotone_flutter/models/photo/photo.dart';

class PhotoListState{
  PhotoListState();
  factory PhotoListState.initial() => PhotoListState();

  // Input
  String searchQuery;
  ListOrderBy listOrderBy;
  UnsplashTopic topic;

  // Output
  List<Photo> photos;
  bool loadingMore;
  bool reloading;

  // Private
  int _nextLoadPage = 1;
  List<Photo> _currentPhotos = [];
  List<Photo> _emptyPhotos = List.filled(10, Photo());

}