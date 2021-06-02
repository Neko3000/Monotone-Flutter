// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_topic_photos_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetTopicPhotosRequest _$GetTopicPhotosRequestFromJson(
    Map<String, dynamic> json) {
  return GetTopicPhotosRequest()
    ..page = json['page'] as int
    ..perPage = json['per_page'] as int
    ..orientation = json['orientation'] as String
    ..orderBy = json['order_by'] as String;
}

Map<String, dynamic> _$GetTopicPhotosRequestToJson(
        GetTopicPhotosRequest instance) =>
    <String, dynamic>{
      'page': instance.page,
      'per_page': instance.perPage,
      'orientation': instance.orientation,
      'order_by': instance.orderBy,
    };
