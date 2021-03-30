import 'package:json_annotation/json_annotation.dart';
import 'package:monotone_flutter/models/collection/collection.dart';
import 'package:monotone_flutter/models/photo/exif.dart';
import 'package:monotone_flutter/models/photo/location.dart';
import 'package:monotone_flutter/models/photo/sponsorship.dart';
import 'package:monotone_flutter/models/photo/urls.dart';
import 'package:monotone_flutter/models/user/user.dart';

part 'photo.g.dart';

@JsonSerializable()
class Photo{
  Photo();

  String id;
  DateTime createdAt;
  DateTime updatedAt;
  DateTime promotedAt;
  int width;
  int height;
  String color;
  String blurHash;
  String description;
  String altDescription;
  URLs urls;
  Sponsorship sponsorship;
  int likes;
  bool likedByUser;
  List<Collection> currentUserCollections;
  User user;
  Exif exif;
  Location location;

  factory Photo.fromJson(Map<String,dynamic> json) => _$PhotoFromJson(json);
  Map<String,dynamic> toJson() => _$PhotoToJson(this);
}

