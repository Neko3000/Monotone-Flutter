// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sponsorship.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Sponsorship _$SponsorshipFromJson(Map<String, dynamic> json) {
  return Sponsorship()
    ..tagline = json['tagline'] as String
    ..taglineURL = json['taglineURL'] as String
    ..sponsor = json['sponsor'] == null
        ? null
        : User.fromJson(json['sponsor'] as Map<String, dynamic>);
}

Map<String, dynamic> _$SponsorshipToJson(Sponsorship instance) =>
    <String, dynamic>{
      'tagline': instance.tagline,
      'taglineURL': instance.taglineURL,
      'sponsor': instance.sponsor,
    };
