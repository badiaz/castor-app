import 'package:json_annotation/json_annotation.dart';

part 'external_ids_entity.g.dart';

@JsonSerializable()
class ExternalIdsEntity {
  @JsonKey(name: 'upc')
  final String? upc;

  ExternalIdsEntity({
    this.upc,
  });

  factory ExternalIdsEntity.fromJson(Map<String, dynamic> json) =>
      _$ExternalIdsEntityFromJson(json);

  Map<String, dynamic> toJson() => _$ExternalIdsEntityToJson(this);
}
