import 'package:json_annotation/json_annotation.dart';
import 'package:monotone_flutter/models/photo/photo.dart';
import 'package:monotone_flutter/services/network/responses/base_response.dart';

part 'unlike_photo_response.g.dart';

@JsonSerializable()
class UnlikePhotoResponse extends BaseResponse{
  UnlikePhotoResponse();

  @JsonKey(name: 'photo')
  Photo photo;

  factory UnlikePhotoResponse.fromJson(Map<String,dynamic> json) => _$UnlikePhotoResponseFromJson(json);
}