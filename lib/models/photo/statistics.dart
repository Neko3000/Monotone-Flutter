import 'package:json_annotation/json_annotation.dart';
import 'package:monotone_flutter/models/photo/statistics_indicator.dart';

part 'statistics.g.dart';

@JsonSerializable()
class Statistics{
  Statistics();

  StatisticsIndicator downloads;
  StatisticsIndicator views;
  StatisticsIndicator likes;

  factory Statistics.fromJson(Map<String,dynamic> json) => _$StatisticsFromJson(json);
  Map<String,dynamic> toJson() => _$StatisticsToJson(this);
}