import 'package:json_annotation/json_annotation.dart';
import 'package:monotone_flutter/models/photo/links.dart';
import 'package:monotone_flutter/models/photo/photo.dart';
import 'package:monotone_flutter/models/topic/preview_photo.dart';
import 'package:monotone_flutter/models/user/user.dart';

part 'topic.g.dart';

@JsonSerializable()
class Topic{
  Topic();

  String id;
  String slug;
  String title;
  String description;
  DateTime publishedAt;
  DateTime updatedAt;
  DateTime startsAt;
  DateTime endsAt;
  bool featured;
  int totalPhotos;
  Links links;
  String status;
  List<User> owners;
  Photo coverPhoto;
  PreviewPhoto previewPhoto;

  factory Topic.fromJson(Map<String,dynamic> json) => _$TopicFromJson(json);
  Map<String,dynamic> toJson() => _$TopicToJson(this);
}