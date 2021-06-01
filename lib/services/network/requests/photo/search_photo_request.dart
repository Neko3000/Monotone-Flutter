import 'package:json_annotation/json_annotation.dart';
import 'package:monotone_flutter/services/network/requests/base_request.dart';

part 'search_photo_request.g.dart';

@JsonSerializable()
class SearchPhotoRequest extends BaseRequest {
  SearchPhotoRequest();

  @JsonKey(ignore: true)
  String get api => 'search/photos';

  String query;
  int page;
  int perPage;
  String orderBy;
  List<String> collections;
  String contentFilter;
  String color;
  String orientation;

  Map<String, dynamic> toJson() => _$SearchPhotoRequestToJson(this);
}