import 'package:json_annotation/json_annotation.dart';

part 'followers_entity.g.dart';

@JsonSerializable()
class FollowersEntity {
  @JsonKey(name: 'href')
  final String? href;

  @JsonKey(name: 'total')
  final int total;

  FollowersEntity({required this.href, required this.total});

  factory FollowersEntity.fromJson(Map<String, dynamic> json) =>
      _$FollowersEntityFromJson(json);

  Map<String, dynamic> toJson() => _$FollowersEntityToJson(this);
}
