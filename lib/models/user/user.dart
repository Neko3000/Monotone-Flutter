import 'package:json_annotation/json_annotation.dart';
import 'package:monotone_flutter/models/photo/links.dart';
import 'package:monotone_flutter/models/photo/location.dart';
import 'package:monotone_flutter/models/photo/photo.dart';
import 'package:monotone_flutter/models/user/profile_image.dart';

part 'user.g.dart';

@JsonSerializable()
class User{
  User();

  String id;
  String updatedAt;
  String username;
  String name;
  String firstName;
  String lastName;
  String instagramUsername;
  String twitterUsername;
  String portfolioURL;
  String bio;
  String location;
  Links links;
  ProfileImage profileImage;
  int totalCollections;
  int totalLinks;
  int totalPhotos;
  bool acceptedTos;
  bool followedByUser;
  List<Photo> photos;
  int followerCount;
  int followingCount;
  bool allowMessages;
  int numericId;
  int downloads;

  factory User.fromJson(Map<String,dynamic> json) => _$UserFromJson(json);
  Map<String,dynamic> toJson() => _$UserToJson(this);
}