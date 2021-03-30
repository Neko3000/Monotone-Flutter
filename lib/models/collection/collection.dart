import 'dart:io';

import 'package:json_annotation/json_annotation.dart';
import 'package:monotone_flutter/models/photo/photo.dart';
import 'package:monotone_flutter/models/photo/sponsorship.dart';
import 'package:monotone_flutter/models/photo/links.dart';
import 'package:monotone_flutter/models/user/user.dart';

part 'collection.g.dart';

@JsonSerializable()
class Collection{
  Collection();

  String id;
  String title;
  Photo coverPhoto;
  String description;
  DateTime publishedAt;
  DateTime lastCollectedAt;
  DateTime updatedAt;
  int totalPhotos;
  List<Photo> previewPhotos;
  Sponsorship sponsorship;
  User user;
  String shareKey;
  Links links;
  bool isPrivate;

  factory Collection.fromJson(Map<String,dynamic> json) => _$CollectionFromJson(json);
  Map<String,dynamic> toJson() => _$CollectionToJson(this);
}