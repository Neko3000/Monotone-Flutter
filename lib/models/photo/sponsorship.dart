import 'package:json_annotation/json_annotation.dart';
import 'package:monotone_flutter/models/user/user.dart';

part 'sponsorship.g.dart';

@JsonSerializable()
class Sponsorship{
  Sponsorship();

  String tagline;
  String taglineURL;
  User sponsor;

  factory Sponsorship.fromJson(Map<String,dynamic> json) => _$SponsorshipFromJson(json);
  Map<String,dynamic> toJson() => _$SponsorshipToJson(this);
}