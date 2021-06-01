import 'package:json_annotation/json_annotation.dart';
import 'package:monotone_flutter/models/photo/photo.dart';
import 'package:monotone_flutter/services/network/responses/base_response.dart';

part 'search_photo_response.g.dart';

@JsonSerializable()
class SearchPhotoResponse extends BaseResponse{
  SearchPhotoResponse();

  int total;
  int totalPages;
  List<Photo> results;

  factory SearchPhotoResponse.fromJson(Map<String,dynamic> json) => _$SearchPhotoResponseFromJson(json);
}