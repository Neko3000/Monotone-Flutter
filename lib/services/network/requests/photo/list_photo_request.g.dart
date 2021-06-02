// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_photo_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListPhotoRequest _$ListPhotoRequestFromJson(Map<String, dynamic> json) {
  return ListPhotoRequest()
    ..page = json['page'] as int
    ..perPage = json['per_page'] as int
    ..orderBy = json['order_by'] as String;
}

Map<String, dynamic> _$ListPhotoRequestToJson(ListPhotoRequest instance) =>
    <String, dynamic>{
      'page': instance.page,
      'per_page': instance.perPage,
      'order_by': instance.orderBy,
    };
