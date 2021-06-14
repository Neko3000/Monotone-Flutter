import 'package:json_annotation/json_annotation.dart';
import 'package:monotone_flutter/services/network/requests/base_request.dart';

part 'get_topic_photos_request.g.dart';

@JsonSerializable()
class GetTopicPhotosRequest extends BaseRequest {
  GetTopicPhotosRequest();

  @override
  @JsonKey(ignore: true)
  String get api => 'topics/${this.idOrSlug ?? ''}/photos';

  @JsonKey(ignore: true)
  String idOrSlug;

  @JsonKey(name: 'page')
  int page;
  @JsonKey(name: 'per_page')
  int perPage;
  @JsonKey(name: 'orientation')
  String orientation;
  @JsonKey(name: 'order_by')
  String orderBy;

  Map<String, dynamic> toJson() => _$GetTopicPhotosRequestToJson(this);
}