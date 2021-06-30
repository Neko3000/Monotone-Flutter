import 'package:json_annotation/json_annotation.dart';
import 'package:monotone_flutter/models/photo/photo.dart';
import 'package:monotone_flutter/services/network/responses/base_response.dart';

part 'list_photo_response.g.dart';

@JsonSerializable()
class ListPhotoResponse extends BaseResponse{
  ListPhotoResponse();

  @JsonKey(name: 'results')
  List<Photo> results;

  factory ListPhotoResponse.fromJson(Map<String,dynamic> json) => _$ListPhotoResponseFromJson(json);
}