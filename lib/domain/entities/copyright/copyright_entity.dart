import 'package:json_annotation/json_annotation.dart';

part 'copyright_entity.g.dart';

@JsonSerializable()
class CopyrightEntity {
  @JsonKey(name: 'text')
  final String? text;

  @JsonKey(name: 'type')
  final String? type;

  CopyrightEntity({
    this.text,
    this.type,
  });

  factory CopyrightEntity.fromJson(Map<String, dynamic> json) =>
      _$CopyrightEntityFromJson(json);

  Map<String, dynamic> toJson() => _$CopyrightEntityToJson(this);
}
