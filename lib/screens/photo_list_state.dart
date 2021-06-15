import 'package:equatable/equatable.dart';
import 'package:monotone_flutter/enums/photo/list_order_by.dart';
import 'package:monotone_flutter/enums/photo/unsplash_topic.dart';
import 'package:monotone_flutter/models/photo/photo.dart';

class PhotoListState extends Equatable {
  PhotoListState(
      {this.searchQuery,
      this.listOrderBy,
      this.topic,
      this.currentPhotos,
      this.nextLoadPage});

  final String searchQuery;

  String get selectedItemKey {
    if (this.listOrderBy != null) {
      return this.listOrderBy.key;
    } else if (this.topic != null) {
      return this.topic.key;
    }

    return '';
  }

  final ListOrderBy listOrderBy;
  final UnsplashTopic topic;

  List<Photo> get photos => this.currentPhotos;
  final List<Photo> currentPhotos;

  final int nextLoadPage;

  @override
  List<Object> get props => [];
}

class PhotoListStateInitial extends PhotoListState {
  PhotoListStateInitial(
      {String searchQuery,
      ListOrderBy listOrderBy,
      UnsplashTopic topic,
      List<Photo> currentPhotos,
      List<Photo> emptyPhotos,
      int nextLoadPage})
      : super(
            searchQuery: searchQuery,
            listOrderBy: listOrderBy,
            topic: topic,
            currentPhotos: currentPhotos ?? [],
            nextLoadPage: nextLoadPage);

  @override
  List<Photo> get photos => [];
}

class PhotoListStateLoadMoreInProgress extends PhotoListState {
  PhotoListStateLoadMoreInProgress(
      {String searchQuery,
      ListOrderBy listOrderBy,
      UnsplashTopic topic,
      List<Photo> currentPhotos,
      List<Photo> emptyPhotos,
      int nextLoadPage})
      : super(
            searchQuery: searchQuery,
            listOrderBy: listOrderBy,
            topic: topic,
            currentPhotos: currentPhotos,
            nextLoadPage: nextLoadPage);

  PhotoListStateLoadMoreInProgress.fromState(PhotoListState state,
      {String searchQuery,
      ListOrderBy listOrderBy,
      UnsplashTopic topic,
      List<Photo> currentPhotos,
      List<Photo> emptyPhotos,
      int nextLoadPage})
      : this(
            searchQuery: searchQuery ?? state.searchQuery,
            listOrderBy: listOrderBy ?? state.listOrderBy,
            topic: topic ?? state.topic,
            currentPhotos: currentPhotos ?? state.currentPhotos,
            nextLoadPage: nextLoadPage ?? state.nextLoadPage);

  @override
  List<Photo> get photos => this.currentPhotos + List.filled(10, Photo());
}

class PhotoListStateReloadInProgress extends PhotoListState {
  PhotoListStateReloadInProgress(
      {String searchQuery,
      ListOrderBy listOrderBy,
      UnsplashTopic topic,
      List<Photo> currentPhotos,
      int nextLoadPage})
      : super(
            searchQuery: searchQuery,
            listOrderBy: listOrderBy,
            topic: topic,
            currentPhotos: currentPhotos,
            nextLoadPage: nextLoadPage);

  PhotoListStateReloadInProgress.fromState(PhotoListState state,
      {String searchQuery,
      ListOrderBy listOrderBy,
      UnsplashTopic topic,
      List<Photo> currentPhotos,
      List<Photo> emptyPhotos,
      int nextLoadPage})
      : this(
            searchQuery: searchQuery ?? state.searchQuery,
            listOrderBy: listOrderBy ?? state.listOrderBy,
            topic: topic ?? state.topic,
            currentPhotos: currentPhotos ?? state.currentPhotos,
            nextLoadPage: nextLoadPage ?? state.nextLoadPage);

  @override
  List<Photo> get photos => List.filled(10, Photo());
}

class PhotoListStateLoadSuccess extends PhotoListState {
  PhotoListStateLoadSuccess(
      {String searchQuery,
      ListOrderBy listOrderBy,
      UnsplashTopic topic,
      List<Photo> currentPhotos,
      int nextLoadPage})
      : super(
            searchQuery: searchQuery,
            listOrderBy: listOrderBy,
            topic: topic,
            currentPhotos: currentPhotos,
            nextLoadPage: nextLoadPage);

  PhotoListStateLoadSuccess.fromState(PhotoListState state,
      {String searchQuery,
      ListOrderBy listOrderBy,
      UnsplashTopic topic,
      List<Photo> currentPhotos,
      List<Photo> emptyPhotos,
      int nextLoadPage})
      : this(
            searchQuery: searchQuery ?? state.searchQuery,
            listOrderBy: listOrderBy ?? state.listOrderBy,
            topic: topic ?? state.topic,
            currentPhotos: currentPhotos ?? state.currentPhotos,
            nextLoadPage: nextLoadPage ?? state.nextLoadPage);

  @override
  List<Photo> get photos => this.currentPhotos;
}

class PhotoListStateLoadFailure extends PhotoListState {
  PhotoListStateLoadFailure(
      {String searchQuery,
      ListOrderBy listOrderBy,
      UnsplashTopic topic,
      List<Photo> currentPhotos,
      int nextLoadPage})
      : super(
            searchQuery: searchQuery,
            listOrderBy: listOrderBy,
            topic: topic,
            currentPhotos: currentPhotos,
            nextLoadPage: nextLoadPage);

  PhotoListStateLoadFailure.fromState(PhotoListState state,
      {String searchQuery,
      ListOrderBy listOrderBy,
      UnsplashTopic topic,
      List<Photo> currentPhotos,
      List<Photo> emptyPhotos,
      int nextLoadPage})
      : this(
            searchQuery: searchQuery ?? state.searchQuery,
            listOrderBy: listOrderBy ?? state.listOrderBy,
            topic: topic ?? state.topic,
            currentPhotos: currentPhotos ?? state.currentPhotos,
            nextLoadPage: nextLoadPage ?? state.nextLoadPage);

  @override
  List<Photo> get photos => this.currentPhotos;
}
