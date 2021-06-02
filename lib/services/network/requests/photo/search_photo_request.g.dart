// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_photo_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchPhotoRequest _$SearchPhotoRequestFromJson(Map<String, dynamic> json) {
  return SearchPhotoRequest()
    ..query = json['query'] as String
    ..page = json['page'] as int
    ..perPage = json['per_page'] as int
    ..orderBy = json['order_by'] as String
    ..collections =
        (json['collections'] as List)?.map((e) => e as String)?.toList()
    ..contentFilter = json['content_filter'] as String
    ..color = json['color'] as String
    ..orientation = json['orientation'] as String;
}

Map<String, dynamic> _$SearchPhotoRequestToJson(SearchPhotoRequest instance) =>
    <String, dynamic>{
      'query': instance.query,
      'page': instance.page,
      'per_page': instance.perPage,
      'order_by': instance.orderBy,
      'collections': instance.collections,
      'content_filter': instance.contentFilter,
      'color': instance.color,
      'orientation': instance.orientation,
    };
