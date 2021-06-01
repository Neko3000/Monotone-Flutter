// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_topic_photos_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetTopicPhotosResponse _$GetTopicPhotosResponseFromJson(
    Map<String, dynamic> json) {
  return GetTopicPhotosResponse()
    ..results = (json['results'] as List)
        ?.map(
            (e) => e == null ? null : Photo.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$GetTopicPhotosResponseToJson(
        GetTopicPhotosResponse instance) =>
    <String, dynamic>{
      'results': instance.results,
    };
