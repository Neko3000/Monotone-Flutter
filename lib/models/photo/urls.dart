import 'package:json_annotation/json_annotation.dart';

part 'urls.g.dart';

@JsonSerializable()
class URLs{
  URLs();

  String raw;
  String full;
  String regular;
  String small;
  String thumb;

  factory URLs.fromJson(Map<String,dynamic> json) => _$URLsFromJson(json);
  Map<String,dynamic> toJson() => _$URLsToJson(this);
}

