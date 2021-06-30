import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:monotone_flutter/models/photo/photo.dart';

abstract class PhotoDetailsEvent extends Equatable{
  const PhotoDetailsEvent();

  @override
  List<Object> get props => [];
}

class PhotoDetailsPhotoLiked extends PhotoDetailsEvent{
  const PhotoDetailsPhotoLiked({@required this.photo});

  final Photo photo;

  @override
  List<Object> get props => [this.photo.id];
}

class PhotoDetailsPhotoUnliked extends PhotoDetailsEvent{
  const PhotoDetailsPhotoUnliked({@required this.photo});

  final Photo photo;

  @override
  List<Object> get props => [this.photo.id];
}