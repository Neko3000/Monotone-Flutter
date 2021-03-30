// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exif.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Exif _$ExifFromJson(Map<String, dynamic> json) {
  return Exif()
    ..iso = json['iso'] as String
    ..aperture = json['aperture'] as String
    ..model = json['model'] as String
    ..focalLength = json['focalLength'] as String
    ..exposureTime = json['exposureTime'] as String
    ..make = json['make'] as String;
}

Map<String, dynamic> _$ExifToJson(Exif instance) => <String, dynamic>{
      'iso': instance.iso,
      'aperture': instance.aperture,
      'model': instance.model,
      'focalLength': instance.focalLength,
      'exposureTime': instance.exposureTime,
      'make': instance.make,
    };
