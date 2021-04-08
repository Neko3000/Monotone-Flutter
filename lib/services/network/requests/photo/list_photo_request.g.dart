// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_photo_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListPhotoRequest _$ListPhotoRequestFromJson(Map<String, dynamic> json) {
  return ListPhotoRequest()
    ..api = json['api'] as String
    ..page = json['page'] as int
    ..perPage = json['perPage'] as int
    ..orderBy = json['orderBy'] as String;
}

Map<String, dynamic> _$ListPhotoRequestToJson(ListPhotoRequest instance) =>
    <String, dynamic>{
      'api': instance.api,
      'page': instance.page,
      'perPage': instance.perPage,
      'orderBy': instance.orderBy,
    };
