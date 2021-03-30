// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'links.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Links _$LinksFromJson(Map<String, dynamic> json) {
  return Links()
    ..selfLink = json['selfLink'] as String
    ..html = json['html'] as String
    ..photos = json['photos'] as String
    ..likes = json['likes'] as String
    ..download = json['download'] as String
    ..downloadLocation = json['downloadLocation'] as String;
}

Map<String, dynamic> _$LinksToJson(Links instance) => <String, dynamic>{
      'selfLink': instance.selfLink,
      'html': instance.html,
      'photos': instance.photos,
      'likes': instance.likes,
      'download': instance.download,
      'downloadLocation': instance.downloadLocation,
    };
