import 'package:json_annotation/json_annotation.dart';

part 'profile_image.g.dart';

@JsonSerializable()
class ProfileImage{
  ProfileImage();

  String small;
  String medium;
  String large;

  factory ProfileImage.fromJson(Map<String,dynamic> json) => _$ProfileImageFromJson(json);
  Map<String,dynamic> toJson() => _$ProfileImageToJson(this);
}