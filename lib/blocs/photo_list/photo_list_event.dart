import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:monotone_flutter/enums/photo/list_order_by.dart';
import 'package:monotone_flutter/enums/photo/unsplash_topic.dart';

abstract class PhotoListEvent extends Equatable{
  const PhotoListEvent();

  @override
  List<Object> get props => [];
}

class PhotoListSearchQueryChanged extends PhotoListEvent{
  const PhotoListSearchQueryChanged({@required this.searchQuery});

  final String searchQuery;

  @override
  List<Object> get props => [searchQuery];
}

class PhotoListListOrderByChanged extends PhotoListEvent{
  const PhotoListListOrderByChanged({@required this.listOrderBy});

  final ListOrderBy listOrderBy;

  @override
  List<Object> get props => [listOrderBy];
}

class PhotoListTopicChanged extends PhotoListEvent{
  const PhotoListTopicChanged({@required this.topic});

  final UnsplashTopic topic;

  @override
  List<Object> get props => [topic];
}

class PhotoListMoreLoaded extends PhotoListEvent{
  const PhotoListMoreLoaded();
}

class PhotoListReloaded extends PhotoListEvent{
  const PhotoListReloaded();
}