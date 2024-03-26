import 'package:castor_spotify_app/domain/entities/image/image_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'artist_entity.g.dart';

@JsonSerializable()
class ArtistEntity {
  @JsonKey(name: 'href')
  final Uri? href;

  @JsonKey(name: 'artist')
  final List<ArtistsItem>? artist;

  @JsonKey(name: 'name')
  final String? name;

  @JsonKey(name: 'type')
  final String? type;

  @JsonKey(name: 'limit')
  final int? limit;

  @JsonKey(name: 'next')
  final Uri? next;

  @JsonKey(name: 'offset')
  final int? offset;

  @JsonKey(name: 'previous')
  final dynamic previous;

  @JsonKey(name: 'total')
  final int? total;

  ArtistEntity({
    this.href,
    this.artist,
    this.name,
    this.type,
    this.limit,
    this.next,
    this.offset,
    this.previous,
    this.total,
  });

  factory ArtistEntity.fromJson(Map<String, dynamic> json) =>
      _$ArtistEntityFromJson(json);

  Map<String, dynamic> toJson() => _$ArtistEntityToJson(this);
}

@JsonSerializable()
class ArtistsItem {
  @JsonKey(name: 'genres')
  final List<String>? genres;

  @JsonKey(name: 'href')
  final Uri? href;

  @JsonKey(name: 'id')
  final String? id;

  @JsonKey(name: 'images')
  final List<ImageEntity>? images;

  @JsonKey(name: 'name')
  final String? name;

  @JsonKey(name: 'popularity')
  final int? popularity;

  @JsonKey(name: 'uri')
  final String? uri;

  ArtistsItem({
    this.href,
    this.id,
    this.name,
    this.popularity,
    this.uri,
    this.genres,
    this.images,
  });

  factory ArtistsItem.fromJson(Map<String, dynamic> json) =>
      _$ArtistsItemFromJson(json);

  Map<String, dynamic> toJson() => _$ArtistsItemToJson(this);
}
