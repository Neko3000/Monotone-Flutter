import 'package:json_annotation/json_annotation.dart';
import 'package:monotone_flutter/models/photo/historical_value.dart';

part 'historical.g.dart';

@JsonSerializable()
class Historical{
  Historical();

  int changes;
  String resolution;
  int quantity;
  List<HistoricalValue> values;

  factory Historical.fromJson(Map<String,dynamic> json) => _$HistoricalFromJson(json);
  Map<String,dynamic> toJson() => _$HistoricalToJson(this);
}