// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unlike_photo_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UnlikePhotoResponse _$UnlikePhotoResponseFromJson(Map<String, dynamic> json) {
  return UnlikePhotoResponse()
    ..photo = json['photo'] == null
        ? null
        : Photo.fromJson(json['photo'] as Map<String, dynamic>);
}

Map<String, dynamic> _$UnlikePhotoResponseToJson(
        UnlikePhotoResponse instance) =>
    <String, dynamic>{
      'photo': instance.photo,
    };
