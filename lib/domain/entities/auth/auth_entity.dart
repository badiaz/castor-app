import 'package:json_annotation/json_annotation.dart';

part 'auth_entity.g.dart';

@JsonSerializable()
class AuthEntity {
  @JsonKey(name: 'access_token')
  final String? accessToken;

  @JsonKey(name: 'token_type')
  final String? tokenType;

  @JsonKey(name: 'expires_in')
  final int? expiresIn;

  @JsonKey(name: 'refresh_token')
  final String? refreshToken;

  final String? scope;

  AuthEntity({
    this.accessToken,
    this.tokenType,
    this.expiresIn,
    this.refreshToken,
    this.scope,
  });

  factory AuthEntity.fromJson(Map<String, dynamic> json) =>
      _$AuthEntityFromJson(json);

  Map<String, dynamic> toJson() => _$AuthEntityToJson(this);
}
