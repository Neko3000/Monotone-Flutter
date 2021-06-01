import 'package:json_annotation/json_annotation.dart';
import 'package:monotone_flutter/services/network/requests/base_request.dart';

part 'get_topic_photos_request.g.dart';

@JsonSerializable()
class GetTopicPhotosRequest extends BaseRequest {
  GetTopicPhotosRequest();

  @JsonKey(ignore: true)
  String get api => 'topic/${this.idOrSlug ?? ''}/photos';

  String idOrSlug;
  int page;
  int perPage;
  String orientation;
  String orderBy;

  Map<String, dynamic> toJson() => _$GetTopicPhotosRequestToJson(this);
}