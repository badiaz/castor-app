import 'package:castor_spotify_app/domain/entities/album/album_entity.dart';
import 'package:castor_spotify_app/domain/entities/artist/artist_entity.dart';
import 'package:castor_spotify_app/domain/entities/copyright/copyright_entity.dart';
import 'package:castor_spotify_app/domain/entities/external_ids/external_ids_entity.dart';
import 'package:castor_spotify_app/domain/entities/external_url/external_url_entity.dart';
import 'package:castor_spotify_app/domain/entities/followers/followers_entity.dart';
import 'package:castor_spotify_app/domain/entities/image/image_entity.dart';
import 'package:castor_spotify_app/domain/entities/track/track_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'responses_entities.g.dart';

@JsonSerializable()
class AlbumSearchResponseEntity {
  @JsonKey(name: 'album_type')
  final String? albumType;

  @JsonKey(name: 'artists')
  final List<ArtistEntity>? artists;

  @JsonKey(name: 'available_markets')
  final List<String>? availableMarkets;

  @JsonKey(name: 'copyrights')
  final List<CopyrightEntity>? copyrights;

  @JsonKey(name: 'external_ids')
  final ExternalIdsEntity? externalIds;

  @JsonKey(name: 'external_urls')
  final ExternalUrlsEntity? externalUrls;

  @JsonKey(name: 'genres')
  final List<Object>? genres;

  @JsonKey(name: 'href')
  final Uri? href;

  @JsonKey(name: 'id')
  final String? id;

  @JsonKey(name: 'images')
  final List<ImageEntity>? images;

  @JsonKey(name: 'label')
  final String? label;

  @JsonKey(name: 'name')
  final String? name;

  @JsonKey(name: 'popularity')
  final int? popularity;

  @JsonKey(name: 'release_date_precision')
  final String? releaseDatePrecision;

  @JsonKey(name: 'total_tracks')
  final int? totalTracks;

  @JsonKey(name: 'tracks')
  final Tracks? tracks;

  @JsonKey(name: 'type')
  final String? type;

  @JsonKey(name: 'uri')
  final String? uri;

  AlbumSearchResponseEntity({
    this.albumType,
    this.artists,
    this.availableMarkets,
    this.externalIds,
    this.externalUrls,
    this.href,
    this.id,
    this.images,
    this.label,
    this.name,
    this.popularity,
    this.releaseDatePrecision,
    this.totalTracks,
    this.tracks,
    this.type,
    this.uri,
    this.genres,
    this.copyrights,
  });

  factory AlbumSearchResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$AlbumSearchResponseEntityFromJson(json);

  Map<String, dynamic> toJson() => _$AlbumSearchResponseEntityToJson(this);
}

@JsonSerializable()
class Tracks {
  @JsonKey(name: 'href')
  final Uri? href;

  @JsonKey(name: 'items')
  final List<Item>? items;

  @JsonKey(name: 'limit')
  final int? limit;

  @JsonKey(name: 'next')
  final dynamic next;

  @JsonKey(name: 'offset')
  final int? offset;

  @JsonKey(name: 'previous')
  final dynamic previous;

  @JsonKey(name: 'total')
  final int? total;

  Tracks({
    this.href,
    this.items,
    this.limit,
    this.next,
    this.offset,
    this.previous,
    this.total,
  });

  factory Tracks.fromJson(Map<String, dynamic> json) => _$TracksFromJson(json);

  Map<String, dynamic> toJson() => _$TracksToJson(this);
}

@JsonSerializable()
class Item {
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

  @JsonKey(name: 'external_urls')
  final ExternalUrlsEntity? externalUrls;

  @JsonKey(name: 'href')
  final Uri? href;

  @JsonKey(name: 'id')
  final String? id;

  @JsonKey(name: 'is_local')
  final bool? isLocal;

  @JsonKey(name: 'name')
  final String? name;

  @JsonKey(name: 'preview_url')
  final Uri? previewUrl;

  @JsonKey(name: 'track_number')
  final int? trackNumber;

  @JsonKey(name: 'type')
  final String? type;

  @JsonKey(name: 'uri')
  final String? uri;

  Item({
    this.artists,
    this.availableMarkets,
    this.discNumber,
    this.durationMs,
    this.explicit,
    this.externalUrls,
    this.href,
    this.id,
    this.isLocal,
    this.name,
    this.previewUrl,
    this.trackNumber,
    this.type,
    this.uri,
  });

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);

  Map<String, dynamic> toJson() => _$ItemToJson(this);
}

@JsonSerializable()
class ArtistSearchResponseEntity {
  @JsonKey(name: 'external_urls')
  final ExternalUrlsEntity? externalUrls;

  @JsonKey(name: 'followers')
  final FollowersEntity? followers;

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

  @JsonKey(name: 'type')
  final String? type;

  @JsonKey(name: 'uri')
  final String? uri;

  ArtistSearchResponseEntity(
    this.externalUrls,
    this.followers,
    this.genres,
    this.href,
    this.id,
    this.images,
    this.name,
    this.popularity,
    this.type,
    this.uri,
  );

  factory ArtistSearchResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$ArtistSearchResponseEntityFromJson(json);

  Map<String, dynamic> toJson() => _$ArtistSearchResponseEntityToJson(this);
}

@JsonSerializable()
class TrackSearchResponseEntity {
  @JsonKey(name: 'album')
  final AlbumEntity? album;

  @JsonKey(name: 'artists')
  final List<ArtistEntity>? artists;

  @JsonKey(name: 'available_markets')
  final List<Object>? availableMarkets;

  @JsonKey(name: 'disc_number')
  final int? discNumber;

  @JsonKey(name: 'duration_ms')
  final int? durationMs;

  @JsonKey(name: 'explicit')
  final bool? explicit;

  @JsonKey(name: 'images')
  final List<ImageEntity>? images;

  @JsonKey(name: 'external_ids')
  final ExternalIdsEntity? externalIds;

  @JsonKey(name: 'external_urls')
  final ExternalUrlsEntity? externalUrls;

  @JsonKey(name: 'href')
  final String? href;

  @JsonKey(name: 'id')
  final String? id;

  @JsonKey(name: 'is_local')
  final bool? isLocal;

  @JsonKey(name: 'name')
  final String? name;

  @JsonKey(name: 'popularity')
  final int? popularity;

  @JsonKey(name: 'preview_url')
  final String? previewUrl;

  @JsonKey(name: 'track_number')
  final int? trackNumber;

  @JsonKey(name: 'type')
  final String? type;

  @JsonKey(name: 'uri')
  final String? uri;

  TrackSearchResponseEntity({
    this.images,
    this.album,
    this.artists,
    this.availableMarkets,
    this.discNumber,
    this.durationMs,
    this.explicit,
    this.externalIds,
    this.externalUrls,
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

  factory TrackSearchResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$TrackSearchResponseEntityFromJson(json);

  Map<String, dynamic> toJson() => _$TrackSearchResponseEntityToJson(this);
}

@JsonSerializable()
class SearchResponseEntity {
  @JsonKey(name: 'artists')
  final ArtistEntity? artists;

  @JsonKey(name: 'albums')
  final AlbumEntity? albums;

  @JsonKey(name: 'tracks')
  final TrackEntity? tracks;

  SearchResponseEntity({
    this.artists,
    this.albums,
    this.tracks,
  });

  factory SearchResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$SearchResponseEntityFromJson(json);

  Map<String, dynamic> toJson() => _$SearchResponseEntityToJson(this);
}
