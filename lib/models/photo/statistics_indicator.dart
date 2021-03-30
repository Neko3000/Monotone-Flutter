import 'package:json_annotation/json_annotation.dart';
import 'package:monotone_flutter/models/photo/historical.dart';

part 'statistics_indicator.g.dart';

@JsonSerializable()
class StatisticsIndicator{
  StatisticsIndicator();

  int total;
  Historical historical;

  factory StatisticsIndicator.fromJson(Map<String,dynamic> json) => _$StatisticsIndicatorFromJson(json);
  Map<String,dynamic> toJson() => _$StatisticsIndicatorToJson(this);
}