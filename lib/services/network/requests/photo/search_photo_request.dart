import 'package:json_annotation/json_annotation.dart';
import 'package:monotone_flutter/services/network/requests/base_request.dart';

part 'search_photo_request.g.dart';

@JsonSerializable()
class SearchPhotoRequest extends BaseRequest {
  SearchPhotoRequest();

  @override
  @JsonKey(ignore: true)
  String get api => 'search/photos';

  @JsonKey(name: 'query')
  String query;
  @JsonKey(name: 'page')
  int page;
  @JsonKey(name: 'per_page')
  int perPage;
  @JsonKey(name: 'order_by')
  String orderBy;
  @JsonKey(name: 'collections')
  List<String> collections;
  @JsonKey(name: 'content_filter')
  String contentFilter;
  @JsonKey(name: 'color')
  String color;
  @JsonKey(name: 'orientation')
  String orientation;

  Map<String, dynamic> toJson() => _$SearchPhotoRequestToJson(this);
}