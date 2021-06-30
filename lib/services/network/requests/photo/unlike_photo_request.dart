import 'package:json_annotation/json_annotation.dart';
import 'package:monotone_flutter/services/network/requests/base_request.dart';

part 'unlike_photo_request.g.dart';

@JsonSerializable()
class UnlikePhotoRequest extends BaseRequest {
  UnlikePhotoRequest();

  @override
  @JsonKey(ignore: true)
  String get api => 'photos/{$this.id ?? ''}/unlike';

  @JsonKey(ignore: true)
  String id;

  Map<String, dynamic> toJson() => _$UnlikePhotoRequestToJson(this);
}