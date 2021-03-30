// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'historical_value.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HistoricalValue _$HistoricalValueFromJson(Map<String, dynamic> json) {
  return HistoricalValue()
    ..date =
        json['date'] == null ? null : DateTime.parse(json['date'] as String)
    ..value = json['value'] as int;
}

Map<String, dynamic> _$HistoricalValueToJson(HistoricalValue instance) =>
    <String, dynamic>{
      'date': instance.date?.toIso8601String(),
      'value': instance.value,
    };
