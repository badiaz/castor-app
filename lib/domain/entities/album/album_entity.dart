import 'package:json_annotation/json_annotation.dart';
import 'package:castor_spotify_app/domain/entities/image/image_entity.dart';
import 'package:castor_spotify_app/domain/entities/artist/artist_entity.dart';

part 'album_entity.g.dart';

@JsonSerializable()
class AlbumEntity {
  @JsonKey(name: 'href')
  final Uri? href;

  @JsonKey(name: 'artists')
  final List<AlbumElement>? artists;

  @JsonKey(name: 'limit')
  final int? limit;

  @JsonKey(name: 'next')
  final Uri? next;

  @JsonKey(name: 'offset')
  final int? offset;

  @JsonKey(name: 'previous')
  final dynamic previous;

  @JsonKey(name: 'images')
  final List<ImageEntity>? images;

  @JsonKey(name: 'total')
  final int? total;

  AlbumEntity({
    this.href,
    this.artists,
    this.limit,
    this.next,
    this.offset,
    this.previous,
    this.images,
    this.total,
  });

  factory AlbumEntity.fromJson(Map<String, dynamic> json) =>
      _$AlbumEntityFromJson(json);

  Map<String, dynamic> toJson() => _$AlbumEntityToJson(this);
}

@JsonSerializable()
class AlbumElement {
  @JsonKey(name: 'artists')
  final List<ArtistEntity>? artists;

  @JsonKey(name: 'available_markets')
  final List<String>? availableMarkets;

  @JsonKey(name: 'href')
  final Uri? href;

  @JsonKey(name: 'id')
  final String? id;

  @JsonKey(name: 'images')
  final List<ImageEntity>? images;

  @JsonKey(name: 'name')
  final String? name;

  @JsonKey(name: 'release_date')
  final String? releaseDate;

  @JsonKey(name: 'total_tracks')
  final int? totalTracks;

  @JsonKey(name: 'type')
  final String? type;

  @JsonKey(name: 'uri')
  final String? uri;

  AlbumElement({
    this.artists,
    this.availableMarkets,
    this.href,
    this.id,
    this.images,
    this.name,
    this.releaseDate,
    this.totalTracks,
    this.type,
    this.uri,
  });

  factory AlbumElement.fromJson(Map<String, dynamic> json) =>
      _$AlbumElementFromJson(json);

  Map<String, dynamic> toJson() => _$AlbumElementToJson(this);
}
