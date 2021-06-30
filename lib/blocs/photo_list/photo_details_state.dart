import 'package:equatable/equatable.dart';
import 'package:monotone_flutter/enums/photo/list_order_by.dart';
import 'package:monotone_flutter/enums/photo/unsplash_topic.dart';
import 'package:monotone_flutter/models/photo/photo.dart';

class PhotoDetailsState extends Equatable {
  PhotoDetailsState({this.photo});

  final Photo photo;

  @override
  List<Object> get props => [this.photo.id];
}

class PhotoDetailsStateInitial extends PhotoDetailsState {
  PhotoDetailsStateInitial({Photo photo}) : super(photo: photo);

  PhotoDetailsStateInitial.fromState(PhotoDetailsState state, {Photo photo})
      : this(photo: photo ?? state.photo);
}
