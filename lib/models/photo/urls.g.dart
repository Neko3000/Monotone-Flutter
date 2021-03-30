// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'urls.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

URLs _$URLsFromJson(Map<String, dynamic> json) {
  return URLs()
    ..raw = json['raw'] as String
    ..full = json['full'] as String
    ..regular = json['regular'] as String
    ..small = json['small'] as String
    ..thumb = json['thumb'] as String;
}

Map<String, dynamic> _$URLsToJson(URLs instance) => <String, dynamic>{
      'raw': instance.raw,
      'full': instance.full,
      'regular': instance.regular,
      'small': instance.small,
      'thumb': instance.thumb,
    };
