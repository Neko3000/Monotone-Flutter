// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Photo _$PhotoFromJson(Map<String, dynamic> json) {
  return Photo()
    ..id = json['id'] as String
    ..createdAt = json['createdAt'] == null
        ? null
        : DateTime.parse(json['createdAt'] as String)
    ..updatedAt = json['updatedAt'] == null
        ? null
        : DateTime.parse(json['updatedAt'] as String)
    ..promotedAt = json['promotedAt'] == null
        ? null
        : DateTime.parse(json['promotedAt'] as String)
    ..width = json['width'] as int
    ..height = json['height'] as int
    ..color = json['color'] as String
    ..blurHash = json['blurHash'] as String
    ..description = json['description'] as String
    ..altDescription = json['altDescription'] as String
    ..urls = json['urls'] == null
        ? null
        : URLs.fromJson(json['urls'] as Map<String, dynamic>)
    ..sponsorship = json['sponsorship'] == null
        ? null
        : Sponsorship.fromJson(json['sponsorship'] as Map<String, dynamic>)
    ..likes = json['likes'] as int
    ..likedByUser = json['likedByUser'] as bool
    ..currentUserCollections = (json['currentUserCollections'] as List)
        ?.map((e) =>
            e == null ? null : Collection.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..user = json['user'] == null
        ? null
        : User.fromJson(json['user'] as Map<String, dynamic>)
    ..exif = json['exif'] == null
        ? null
        : Exif.fromJson(json['exif'] as Map<String, dynamic>)
    ..location = json['location'] == null
        ? null
        : Location.fromJson(json['location'] as Map<String, dynamic>);
}

Map<String, dynamic> _$PhotoToJson(Photo instance) => <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'promotedAt': instance.promotedAt?.toIso8601String(),
      'width': instance.width,
      'height': instance.height,
      'color': instance.color,
      'blurHash': instance.blurHash,
      'description': instance.description,
      'altDescription': instance.altDescription,
      'urls': instance.urls,
      'sponsorship': instance.sponsorship,
      'likes': instance.likes,
      'likedByUser': instance.likedByUser,
      'currentUserCollections': instance.currentUserCollections,
      'user': instance.user,
      'exif': instance.exif,
      'location': instance.location,
    };
