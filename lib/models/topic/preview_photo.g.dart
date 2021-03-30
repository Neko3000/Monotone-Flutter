// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'preview_photo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PreviewPhoto _$PreviewPhotoFromJson(Map<String, dynamic> json) {
  return PreviewPhoto()
    ..updatedAt = json['updatedAt'] as String
    ..createdAt = json['createdAt'] as String
    ..urls = json['urls'] == null
        ? null
        : URLs.fromJson(json['urls'] as Map<String, dynamic>)
    ..id = json['id'] as String;
}

Map<String, dynamic> _$PreviewPhotoToJson(PreviewPhoto instance) =>
    <String, dynamic>{
      'updatedAt': instance.updatedAt,
      'createdAt': instance.createdAt,
      'urls': instance.urls,
      'id': instance.id,
    };
