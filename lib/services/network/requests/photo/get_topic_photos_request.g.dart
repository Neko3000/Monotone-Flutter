// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_topic_photos_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetTopicPhotosRequest _$GetTopicPhotosRequestFromJson(
    Map<String, dynamic> json) {
  return GetTopicPhotosRequest()
    ..idOrSlug = json['idOrSlug'] as String
    ..page = json['page'] as int
    ..perPage = json['perPage'] as int
    ..orientation = json['orientation'] as String
    ..orderBy = json['orderBy'] as String;
}

Map<String, dynamic> _$GetTopicPhotosRequestToJson(
        GetTopicPhotosRequest instance) =>
    <String, dynamic>{
      'idOrSlug': instance.idOrSlug,
      'page': instance.page,
      'perPage': instance.perPage,
      'orientation': instance.orientation,
      'orderBy': instance.orderBy,
    };
