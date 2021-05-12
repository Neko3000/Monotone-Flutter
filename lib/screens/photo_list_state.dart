import 'package:equatable/equatable.dart';
import 'package:monotone_flutter/enums/photo/list_order_by.dart';
import 'package:monotone_flutter/models/photo/photo.dart';
import 'package:monotone_flutter/models/topic/topic.dart';

class PhotoListState extends Equatable {
  PhotoListState(
      {this.searchQuery,
      this.listOrderBy,
      this.topic,
      this.currentPhotos,
      this.nextLoadPage});

  final String searchQuery;
  final ListOrderBy listOrderBy;
  final Topic topic;

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
      Topic topic,
      List<Photo> currentPhotos,
      List<Photo> emptyPhotos,
      int nextLoadPage})
      : super(
            searchQuery: searchQuery,
            listOrderBy: listOrderBy,
            topic: topic,
            currentPhotos: currentPhotos,
            nextLoadPage: nextLoadPage);

  @override
  List<Photo> get photos => [];
}

class PhotoListStateLoadMoreInProgress extends PhotoListState {
  PhotoListStateLoadMoreInProgress(
      {String searchQuery,
      ListOrderBy listOrderBy,
      Topic topic,
      List<Photo> currentPhotos,
      List<Photo> emptyPhotos,
      int nextLoadPage})
      : super(
            searchQuery: searchQuery,
            listOrderBy: listOrderBy,
            topic: topic,
            currentPhotos: currentPhotos,
            nextLoadPage: nextLoadPage);

  PhotoListStateLoadMoreInProgress.fromState(PhotoListState state)
      : this(
            searchQuery: state.searchQuery,
            listOrderBy: state.listOrderBy,
            topic: state.topic,
            currentPhotos: state.currentPhotos,
            nextLoadPage: state.nextLoadPage);

  @override
  List<Photo> get photos => this.currentPhotos + List.filled(10, Photo());
}

class PhotoListStateReloadInProgress extends PhotoListState {
  PhotoListStateReloadInProgress(
      {String searchQuery,
      ListOrderBy listOrderBy,
      Topic topic,
      List<Photo> currentPhotos,
      int nextLoadPage})
      : super(
            searchQuery: searchQuery,
            listOrderBy: listOrderBy,
            topic: topic,
            currentPhotos: currentPhotos,
            nextLoadPage: nextLoadPage);

  PhotoListStateReloadInProgress.fromState(PhotoListState state)
      : this(
            searchQuery: state.searchQuery,
            listOrderBy: state.listOrderBy,
            topic: state.topic,
            currentPhotos: state.currentPhotos,
            nextLoadPage: state.nextLoadPage);

  @override
  List<Photo> get photos => List.filled(10, Photo());
}

class PhotoListStateLoadSuccess extends PhotoListState {
  PhotoListStateLoadSuccess(
      {String searchQuery,
      ListOrderBy listOrderBy,
      Topic topic,
      List<Photo> currentPhotos,
      int nextLoadPage})
      : super(
            searchQuery: searchQuery,
            listOrderBy: listOrderBy,
            topic: topic,
            currentPhotos: currentPhotos,
            nextLoadPage: nextLoadPage);

  PhotoListStateLoadSuccess.fromState(PhotoListState state)
      : this(
            searchQuery: state.searchQuery,
            listOrderBy: state.listOrderBy,
            topic: state.topic,
            currentPhotos: state.currentPhotos,
            nextLoadPage: state.nextLoadPage);

  @override
  List<Photo> get photos => this.currentPhotos;
}

class PhotoListStateLoadFailure extends PhotoListState {
  PhotoListStateLoadFailure(
      {String searchQuery,
      ListOrderBy listOrderBy,
      Topic topic,
      List<Photo> currentPhotos,
      int nextLoadPage})
      : super(
            searchQuery: searchQuery,
            listOrderBy: listOrderBy,
            topic: topic,
            currentPhotos: currentPhotos,
            nextLoadPage: nextLoadPage);

  PhotoListStateLoadFailure.fromState(PhotoListState state)
      : this(
            searchQuery: state.searchQuery,
            listOrderBy: state.listOrderBy,
            topic: state.topic,
            currentPhotos: state.currentPhotos,
            nextLoadPage: state.nextLoadPage);

  @override
  List<Photo> get photos => this.currentPhotos;
}
