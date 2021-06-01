// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_photo_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchPhotoResponse _$SearchPhotoResponseFromJson(Map<String, dynamic> json) {
  return SearchPhotoResponse()
    ..total = json['total'] as int
    ..totalPages = json['totalPages'] as int
    ..results = (json['results'] as List)
        ?.map(
            (e) => e == null ? null : Photo.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$SearchPhotoResponseToJson(
        SearchPhotoResponse instance) =>
    <String, dynamic>{
      'total': instance.total,
      'totalPages': instance.totalPages,
      'results': instance.results,
    };
