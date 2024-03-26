import 'package:json_annotation/json_annotation.dart';
part 'image_entity.g.dart';

@JsonSerializable()
class ImageEntity {
  @JsonKey(name: 'height')
  final int height;

  @JsonKey(name: 'url')
  final String url;

  @JsonKey(name: 'width')
  final int width;

  ImageEntity({
    required this.height,
    required this.url,
    required this.width,
  });

  factory ImageEntity.fromJson(Map<String, dynamic> json) =>
      _$ImageEntityFromJson(json);

  Map<String, dynamic> toJson() => _$ImageEntityToJson(this);
}
