// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'statistics.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Statistics _$StatisticsFromJson(Map<String, dynamic> json) {
  return Statistics()
    ..downloads = json['downloads'] == null
        ? null
        : StatisticsIndicator.fromJson(
            json['downloads'] as Map<String, dynamic>)
    ..views = json['views'] == null
        ? null
        : StatisticsIndicator.fromJson(json['views'] as Map<String, dynamic>)
    ..likes = json['likes'] == null
        ? null
        : StatisticsIndicator.fromJson(json['likes'] as Map<String, dynamic>);
}

Map<String, dynamic> _$StatisticsToJson(Statistics instance) =>
    <String, dynamic>{
      'downloads': instance.downloads,
      'views': instance.views,
      'likes': instance.likes,
    };
