// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  return User()
    ..id = json['id'] as String
    ..updatedAt = json['updatedAt'] as String
    ..username = json['username'] as String
    ..name = json['name'] as String
    ..firstName = json['firstName'] as String
    ..lastName = json['lastName'] as String
    ..instagramUsername = json['instagramUsername'] as String
    ..twitterUsername = json['twitterUsername'] as String
    ..portfolioURL = json['portfolioURL'] as String
    ..bio = json['bio'] as String
    ..location = json['location'] as String
    ..links = json['links'] == null
        ? null
        : Links.fromJson(json['links'] as Map<String, dynamic>)
    ..profileImage = json['profileImage'] == null
        ? null
        : ProfileImage.fromJson(json['profileImage'] as Map<String, dynamic>)
    ..totalCollections = json['totalCollections'] as int
    ..totalLinks = json['totalLinks'] as int
    ..totalPhotos = json['totalPhotos'] as int
    ..acceptedTos = json['acceptedTos'] as bool
    ..followedByUser = json['followedByUser'] as bool
    ..photos = (json['photos'] as List)
        ?.map(
            (e) => e == null ? null : Photo.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..followerCount = json['followerCount'] as int
    ..followingCount = json['followingCount'] as int
    ..allowMessages = json['allowMessages'] as bool
    ..numericId = json['numericId'] as int
    ..downloads = json['downloads'] as int;
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'updatedAt': instance.updatedAt,
      'username': instance.username,
      'name': instance.name,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'instagramUsername': instance.instagramUsername,
      'twitterUsername': instance.twitterUsername,
      'portfolioURL': instance.portfolioURL,
      'bio': instance.bio,
      'location': instance.location,
      'links': instance.links,
      'profileImage': instance.profileImage,
      'totalCollections': instance.totalCollections,
      'totalLinks': instance.totalLinks,
      'totalPhotos': instance.totalPhotos,
      'acceptedTos': instance.acceptedTos,
      'followedByUser': instance.followedByUser,
      'photos': instance.photos,
      'followerCount': instance.followerCount,
      'followingCount': instance.followingCount,
      'allowMessages': instance.allowMessages,
      'numericId': instance.numericId,
      'downloads': instance.downloads,
    };
