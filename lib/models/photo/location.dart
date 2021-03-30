import 'package:json_annotation/json_annotation.dart';
import 'package:monotone_flutter/models/photo/position.dart';

part 'location.g.dart';

@JsonSerializable()
class Location {
  Location();

  String city;
  String country;
  Position position;
  String title;

  factory Location.fromJson(Map<String,dynamic> json) => _$LocationFromJson(json);
  Map<String,dynamic> toJson() => _$LocationToJson(this);
}