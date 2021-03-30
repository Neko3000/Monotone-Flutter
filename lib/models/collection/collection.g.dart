// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collection.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Collection _$CollectionFromJson(Map<String, dynamic> json) {
  return Collection()
    ..id = json['id'] as String
    ..title = json['title'] as String
    ..coverPhoto = json['coverPhoto'] == null
        ? null
        : Photo.fromJson(json['coverPhoto'] as Map<String, dynamic>)
    ..description = json['description'] as String
    ..publishedAt = json['publishedAt'] == null
        ? null
        : DateTime.parse(json['publishedAt'] as String)
    ..lastCollectedAt = json['lastCollectedAt'] == null
        ? null
        : DateTime.parse(json['lastCollectedAt'] as String)
    ..updatedAt = json['updatedAt'] == null
        ? null
        : DateTime.parse(json['updatedAt'] as String)
    ..totalPhotos = json['totalPhotos'] as int
    ..previewPhotos = (json['previewPhotos'] as List)
        ?.map(
            (e) => e == null ? null : Photo.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..sponsorship = json['sponsorship'] == null
        ? null
        : Sponsorship.fromJson(json['sponsorship'] as Map<String, dynamic>)
    ..user = json['user'] == null
        ? null
        : User.fromJson(json['user'] as Map<String, dynamic>)
    ..shareKey = json['shareKey'] as String
    ..links = json['links'] == null
        ? null
        : Links.fromJson(json['links'] as Map<String, dynamic>)
    ..isPrivate = json['isPrivate'] as bool;
}

Map<String, dynamic> _$CollectionToJson(Collection instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'coverPhoto': instance.coverPhoto,
      'description': instance.description,
      'publishedAt': instance.publishedAt?.toIso8601String(),
      'lastCollectedAt': instance.lastCollectedAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'totalPhotos': instance.totalPhotos,
      'previewPhotos': instance.previewPhotos,
      'sponsorship': instance.sponsorship,
      'user': instance.user,
      'shareKey': instance.shareKey,
      'links': instance.links,
      'isPrivate': instance.isPrivate,
    };
