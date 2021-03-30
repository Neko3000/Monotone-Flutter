// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'statistics_indicator.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StatisticsIndicator _$StatisticsIndicatorFromJson(Map<String, dynamic> json) {
  return StatisticsIndicator()
    ..total = json['total'] as int
    ..historical = json['historical'] == null
        ? null
        : Historical.fromJson(json['historical'] as Map<String, dynamic>);
}

Map<String, dynamic> _$StatisticsIndicatorToJson(
        StatisticsIndicator instance) =>
    <String, dynamic>{
      'total': instance.total,
      'historical': instance.historical,
    };
