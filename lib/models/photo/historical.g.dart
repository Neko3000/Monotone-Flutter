// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'historical.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Historical _$HistoricalFromJson(Map<String, dynamic> json) {
  return Historical()
    ..changes = json['changes'] as int
    ..resolution = json['resolution'] as String
    ..quantity = json['quantity'] as int
    ..values = (json['values'] as List)
        ?.map((e) => e == null
            ? null
            : HistoricalValue.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$HistoricalToJson(Historical instance) =>
    <String, dynamic>{
      'changes': instance.changes,
      'resolution': instance.resolution,
      'quantity': instance.quantity,
      'values': instance.values,
    };
