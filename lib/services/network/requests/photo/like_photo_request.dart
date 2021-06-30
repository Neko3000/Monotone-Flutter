import 'package:json_annotation/json_annotation.dart';
import 'package:monotone_flutter/services/network/requests/base_request.dart';

part 'like_photo_request.g.dart';

@JsonSerializable()
class LikePhotoRequest extends BaseRequest {
  LikePhotoRequest();

  @override
  @JsonKey(ignore: true)
  String get api => 'photos/{$this.id ?? ''}/like';

  @JsonKey(ignore: true)
  String id;

  Map<String, dynamic> toJson() => _$LikePhotoRequestToJson(this);
}