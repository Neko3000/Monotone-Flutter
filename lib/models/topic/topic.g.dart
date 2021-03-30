// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'topic.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Topic _$TopicFromJson(Map<String, dynamic> json) {
  return Topic()
    ..id = json['id'] as String
    ..slug = json['slug'] as String
    ..title = json['title'] as String
    ..description = json['description'] as String
    ..publishedAt = json['publishedAt'] == null
        ? null
        : DateTime.parse(json['publishedAt'] as String)
    ..updatedAt = json['updatedAt'] == null
        ? null
        : DateTime.parse(json['updatedAt'] as String)
    ..startsAt = json['startsAt'] == null
        ? null
        : DateTime.parse(json['startsAt'] as String)
    ..endsAt =
        json['endsAt'] == null ? null : DateTime.parse(json['endsAt'] as String)
    ..featured = json['featured'] as bool
    ..totalPhotos = json['totalPhotos'] as int
    ..links = json['links'] == null
        ? null
        : Links.fromJson(json['links'] as Map<String, dynamic>)
    ..status = json['status'] as String
    ..owners = (json['owners'] as List)
        ?.map(
            (e) => e == null ? null : User.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..coverPhoto = json['coverPhoto'] == null
        ? null
        : Photo.fromJson(json['coverPhoto'] as Map<String, dynamic>)
    ..previewPhoto = json['previewPhoto'] == null
        ? null
        : PreviewPhoto.fromJson(json['previewPhoto'] as Map<String, dynamic>);
}

Map<String, dynamic> _$TopicToJson(Topic instance) => <String, dynamic>{
      'id': instance.id,
      'slug': instance.slug,
      'title': instance.title,
      'description': instance.description,
      'publishedAt': instance.publishedAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'startsAt': instance.startsAt?.toIso8601String(),
      'endsAt': instance.endsAt?.toIso8601String(),
      'featured': instance.featured,
      'totalPhotos': instance.totalPhotos,
      'links': instance.links,
      'status': instance.status,
      'owners': instance.owners,
      'coverPhoto': instance.coverPhoto,
      'previewPhoto': instance.previewPhoto,
    };
