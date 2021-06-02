import 'package:json_annotation/json_annotation.dart';
import 'package:monotone_flutter/services/network/requests/base_request.dart';

part 'list_photo_request.g.dart';

@JsonSerializable()
class ListPhotoRequest extends BaseRequest {
  ListPhotoRequest();

  @override
  @JsonKey(ignore: true)
  String get api => 'photos';

  @JsonKey(name: 'page')
  int page;
  @JsonKey(name: 'per_page')
  int perPage;
  @JsonKey(name: 'order_by')
  String orderBy;

  Map<String, dynamic> toJson() => _$ListPhotoRequestToJson(this);
}