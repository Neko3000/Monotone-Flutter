import 'package:json_annotation/json_annotation.dart';
import 'package:monotone_flutter/models/photo/photo.dart';
import 'package:monotone_flutter/services/network/responses/base_response.dart';

part 'get_topic_photos_response.g.dart';

@JsonSerializable()
class GetTopicPhotosResponse extends BaseResponse{
  GetTopicPhotosResponse();

  List<Photo> results;

  factory GetTopicPhotosResponse.fromJson(Map<String,dynamic> json) => _$GetTopicPhotosResponseFromJson(json);
}