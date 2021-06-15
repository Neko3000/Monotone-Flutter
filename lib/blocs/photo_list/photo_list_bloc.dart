import 'package:flutter/material.dart';
import 'package:monotone_flutter/enums/photo/list_order_by.dart';
import 'package:monotone_flutter/enums/photo/unsplash_topic.dart';
import 'package:monotone_flutter/models/photo/photo.dart';
import 'package:monotone_flutter/blocs/base_bloc.dart';
import 'package:monotone_flutter/blocs/photo_list/photo_list_event.dart';
import 'package:monotone_flutter/blocs/photo_list/photo_list_state.dart';
import 'package:monotone_flutter/services/network/photo_service.dart';
import 'package:monotone_flutter/services/network/topic_service.dart';

class PhotoListBloc extends BaseBloc<PhotoListEvent, PhotoListState> {
  PhotoListBloc({PhotoListState initialState})
      : super(initialState ?? PhotoListStateInitial()) {
    // FIXME: Inject all services here(optional).
  }

  @override
  Stream<PhotoListState> bind(PhotoListEvent event) async* {
    // PhotoService photoService = this.findServices(PhotoService);
    PhotoService photoService = PhotoService();
    TopicService topicService = TopicService();

    if (event is PhotoListMoreLoaded || event is PhotoListReloaded) {
      int nextLoadPage = 0;
      if (event is PhotoListMoreLoaded) {
        nextLoadPage = this.state.nextLoadPage;
        yield PhotoListStateLoadMoreInProgress.fromState(this.state);
      } else {
        nextLoadPage = 1;
        yield PhotoListStateReloadInProgress.fromState(this.state);
      }

      try {
        List<Photo> photos = [];

        if (this.state.searchQuery != null) {
          photos = await photoService.searchPhotos(this.state.searchQuery,
              page: nextLoadPage, perPage: 20);
        } else if (this.state.listOrderBy != null) {
          photos = await photoService.listPhotos(
              page: nextLoadPage,
              perPage: 20,
              orderBy: this.state.listOrderBy.key);
        } else if (this.state.topic != null) {
          photos = await topicService.getTopicPhotos(this.state.topic.key,
              page: nextLoadPage, perPage: 20);
        }

        yield PhotoListStateLoadSuccess(
            searchQuery: this.state.searchQuery,
            listOrderBy: this.state.listOrderBy,
            topic: this.state.topic,
            currentPhotos: event is PhotoListMoreLoaded
                ? this.state.currentPhotos + photos
                : photos,
            nextLoadPage: this.state.nextLoadPage + 1);
      } catch (e) {
        yield PhotoListStateLoadFailure.fromState(this.state);
      }
    } else if (event is PhotoListSearchQueryChanged) {
      final String searchQuery = event.searchQuery;
      final int nextLoadPage = 1;

      yield PhotoListStateReloadInProgress.fromState(this.state,
          searchQuery: searchQuery);

      try {
        final List<Photo> photos = await photoService.searchPhotos(searchQuery,
            page: nextLoadPage, perPage: 20);

        yield PhotoListStateLoadSuccess(
            searchQuery: searchQuery,
            listOrderBy: null,
            topic: null,
            currentPhotos: photos,
            nextLoadPage: nextLoadPage + 1);
      } catch (e) {
        yield PhotoListStateLoadFailure.fromState(this.state);
      }
    } else if (event is PhotoListListOrderByChanged) {
      final ListOrderBy listOrderBy = event.listOrderBy;
      final int nextLoadPage = 1;

      yield PhotoListStateReloadInProgress.fromState(this.state,
          listOrderBy: listOrderBy);

      try {
        final List<Photo> photos = await photoService.listPhotos(
            page: nextLoadPage, perPage: 20, orderBy: listOrderBy.key);

        yield PhotoListStateLoadSuccess(
            searchQuery: null,
            listOrderBy: listOrderBy,
            topic: null,
            currentPhotos: photos,
            nextLoadPage: nextLoadPage + 1);
      } catch (e) {
        yield PhotoListStateLoadFailure.fromState(this.state);
      }
    } else if (event is PhotoListTopicChanged) {
      final UnsplashTopic topic = event.topic;
      final int nextLoadPage = 1;

      yield PhotoListStateReloadInProgress.fromState(this.state, topic: topic);

      try {
        final List<Photo> photos = await topicService.getTopicPhotos(topic.key,
            page: nextLoadPage, perPage: 20);

        yield PhotoListStateLoadSuccess(
            searchQuery: null,
            listOrderBy: null,
            topic: topic,
            currentPhotos: photos,
            nextLoadPage: nextLoadPage + 1);
      } catch (e) {
        yield PhotoListStateLoadFailure.fromState(this.state);
      }
    }
  }
}
