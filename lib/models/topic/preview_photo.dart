import 'package:json_annotation/json_annotation.dart';
import 'package:monotone_flutter/models/photo/urls.dart';

part 'preview_photo.g.dart';

@JsonSerializable()
class PreviewPhoto{
  PreviewPhoto();

  String updatedAt;
  String createdAt;
  URLs urls;
  String id;

  factory PreviewPhoto.fromJson(Map<String,dynamic> json) => _$PreviewPhotoFromJson(json);
  Map<String,dynamic> toJson() => _$PreviewPhotoToJson(this);
}