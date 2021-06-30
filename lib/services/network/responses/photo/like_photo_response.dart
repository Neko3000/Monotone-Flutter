import 'package:json_annotation/json_annotation.dart';
import 'package:monotone_flutter/models/photo/photo.dart';
import 'package:monotone_flutter/services/network/responses/base_response.dart';

part 'like_photo_response.g.dart';

@JsonSerializable()
class LikePhotoResponse extends BaseResponse{
  LikePhotoResponse();

  @JsonKey(name: 'photo')
  Photo photo;

  factory LikePhotoResponse.fromJson(Map<String,dynamic> json) => _$LikePhotoResponseFromJson(json);
}