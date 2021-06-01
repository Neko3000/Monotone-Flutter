// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_photo_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchPhotoRequest _$SearchPhotoRequestFromJson(Map<String, dynamic> json) {
  return SearchPhotoRequest()
    ..query = json['query'] as String
    ..page = json['page'] as int
    ..perPage = json['perPage'] as int
    ..orderBy = json['orderBy'] as String
    ..collections =
        (json['collections'] as List)?.map((e) => e as String)?.toList()
    ..contentFilter = json['contentFilter'] as String
    ..color = json['color'] as String
    ..orientation = json['orientation'] as String;
}

Map<String, dynamic> _$SearchPhotoRequestToJson(SearchPhotoRequest instance) =>
    <String, dynamic>{
      'query': instance.query,
      'page': instance.page,
      'perPage': instance.perPage,
      'orderBy': instance.orderBy,
      'collections': instance.collections,
      'contentFilter': instance.contentFilter,
      'color': instance.color,
      'orientation': instance.orientation,
    };
