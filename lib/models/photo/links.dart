import 'package:json_annotation/json_annotation.dart';

part 'links.g.dart';

@JsonSerializable()
class Links{
  Links();

  String selfLink;
  String html;
  String photos;
  String likes;
  String download;
  String downloadLocation;

  factory Links.fromJson(Map<String,dynamic> json) => _$LinksFromJson(json);
  Map<String, dynamic> toJson() => _$LinksToJson(this);
}