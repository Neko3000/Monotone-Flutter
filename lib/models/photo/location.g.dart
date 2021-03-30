// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Location _$LocationFromJson(Map<String, dynamic> json) {
  return Location()
    ..city = json['city'] as String
    ..country = json['country'] as String
    ..position = json['position'] == null
        ? null
        : Position.fromJson(json['position'] as Map<String, dynamic>)
    ..title = json['title'] as String;
}

Map<String, dynamic> _$LocationToJson(Location instance) => <String, dynamic>{
      'city': instance.city,
      'country': instance.country,
      'position': instance.position,
      'title': instance.title,
    };
