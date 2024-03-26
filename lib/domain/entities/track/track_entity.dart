import 'package:castor_spotify_app/domain/entities/album/album_entity.dart';
import 'package:castor_spotify_app/domain/entities/artist/artist_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'track_entity.g.dart';

@JsonSerializable()
class TrackEntity {
  @JsonKey(name: 'href')
  final Uri? href;

  @JsonKey(name: 'items')
  final List<TracksItem>? items;

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

  TrackEntity({
    this.href,
    this.items,
    this.limit,
    this.next,
    this.offset,
    this.previous,
    this.total,
  });

  factory TrackEntity.fromJson(Map<String, dynamic> json) =>
      _$TrackEntityFromJson(json);

  Map<String, dynamic> toJson() => _$TrackEntityToJson(this);
}

@JsonSerializable()
class TracksItem {
  @JsonKey(name: 'album')
  final AlbumEntity? album;

  @JsonKey(name: 'artists')
  final List<ArtistEntity>? artists;

  @JsonKey(name: 'available_markets')
  final List<String>? availableMarkets;

  @JsonKey(name: 'disc_number')
  final int? discNumber;

  @JsonKey(name: 'duration_ms')
  final int? durationMs;

  @JsonKey(name: 'explicit')
  final bool? explicit;

  @JsonKey(name: 'href')
  final Uri? href;

  @JsonKey(name: 'id')
  final String? id;

  @JsonKey(name: 'is_local')
  final bool? isLocal;

  @JsonKey(name: 'name')
  final String? name;

  @JsonKey(name: 'popularity')
  final int? popularity;

  @JsonKey(name: 'preview_url')
  final Uri? previewUrl;

  @JsonKey(name: 'track_number')
  final int? trackNumber;

  @JsonKey(name: 'type')
  final String? type;

  @JsonKey(name: 'uri')
  final String? uri;

  TracksItem({
    this.album,
    this.artists,
    this.availableMarkets,
    this.discNumber,
    this.durationMs,
    this.explicit,
    this.href,
    this.id,
    this.isLocal,
    this.name,
    this.popularity,
    this.previewUrl,
    this.trackNumber,
    this.type,
    this.uri,
  });

  factory TracksItem.fromJson(Map<String, dynamic> json) =>
      _$TracksItemFromJson(json);

  Map<String, dynamic> toJson() => _$TracksItemToJson(this);
}
