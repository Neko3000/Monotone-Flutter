import 'package:json_annotation/json_annotation.dart';

part 'historical_value.g.dart';

@JsonSerializable()
class HistoricalValue{
  HistoricalValue();

  DateTime date;
  int value;

  factory HistoricalValue.fromJson(Map<String,dynamic> json) => _$HistoricalValueFromJson(json);
  Map<String,dynamic> toJson() => _$HistoricalValueToJson(this);
}