import 'package:json_annotation/json_annotation.dart';

part 'external_url_entity.g.dart';

@JsonSerializable()
class ExternalUrlsEntity {
  @JsonKey(
      name:
          'spotify') // Replace 'key_name' with the actual key name used in your JSON
  final String? spotify;

  ExternalUrlsEntity({
    this.spotify,
  });

  factory ExternalUrlsEntity.fromJson(Map<String, dynamic> json) =>
      _$ExternalUrlsEntityFromJson(json);

  Map<String, dynamic> toJson() => _$ExternalUrlsEntityToJson(this);
}
