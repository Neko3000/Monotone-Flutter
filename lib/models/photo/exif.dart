import 'package:json_annotation/json_annotation.dart';

part 'exif.g.dart';

@JsonSerializable()
class Exif{
  Exif();

  String iso;
  String aperture;
  String model;
  String focalLength;
  String exposureTime;
  String make;

  factory Exif.fromJson(Map<String,dynamic> json) => _$ExifFromJson(json);
  Map<String,dynamic> toJson() => _$ExifToJson(this);
}