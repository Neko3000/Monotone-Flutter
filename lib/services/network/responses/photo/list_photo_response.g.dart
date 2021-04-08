// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_photo_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListPhotoResponse _$ListPhotoResponseFromJson(Map<String, dynamic> json) {
  return ListPhotoResponse()
    ..result = (json['result'] as List)
        ?.map(
            (e) => e == null ? null : Photo.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$ListPhotoResponseToJson(ListPhotoResponse instance) =>
    <String, dynamic>{
      'result': instance.result,
    };
