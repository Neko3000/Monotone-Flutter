// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'like_photo_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LikePhotoResponse _$LikePhotoResponseFromJson(Map<String, dynamic> json) {
  return LikePhotoResponse()
    ..photo = json['photo'] == null
        ? null
        : Photo.fromJson(json['photo'] as Map<String, dynamic>);
}

Map<String, dynamic> _$LikePhotoResponseToJson(LikePhotoResponse instance) =>
    <String, dynamic>{
      'photo': instance.photo,
    };
