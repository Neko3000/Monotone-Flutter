import 'package:json_annotation/json_annotation.dart';
import 'package:monotone_flutter/services/network/requests/base_request.dart';

part 'list_photo_request.g.dart';

@JsonSerializable()
class ListPhotoRequest extends BaseRequest {
  ListPhotoRequest();

  @JsonKey(ignore: true)
  String get api => 'photos';

  int page;
  int perPage;
  String orderBy;

  Map<String, dynamic> toJson() => _$ListPhotoRequestToJson(this);
}