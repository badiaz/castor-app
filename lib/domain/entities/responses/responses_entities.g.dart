// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'responses_entities.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AlbumSearchResponseEntity _$AlbumSearchResponseEntityFromJson(
        Map<String, dynamic> json) =>
    AlbumSearchResponseEntity(
      albumType: json['album_type'] as String?,
      artists: (json['artists'] as List<dynamic>?)
          ?.map((e) => ArtistEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      availableMarkets: (json['available_markets'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      externalIds: json['external_ids'] == null
          ? null
          : ExternalIdsEntity.fromJson(
              json['external_ids'] as Map<String, dynamic>),
      externalUrls: json['external_urls'] == null
          ? null
          : ExternalUrlsEntity.fromJson(
              json['external_urls'] as Map<String, dynamic>),
      href: json['href'] == null ? null : Uri.parse(json['href'] as String),
      id: json['id'] as String?,
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => ImageEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      label: json['label'] as String?,
      name: json['name'] as String?,
      popularity: json['popularity'] as int?,
      releaseDatePrecision: json['release_date_precision'] as String?,
      totalTracks: json['total_tracks'] as int?,
      tracks: json['tracks'] == null
          ? null
          : Tracks.fromJson(json['tracks'] as Map<String, dynamic>),
      type: json['type'] as String?,
      uri: json['uri'] as String?,
      genres:
          (json['genres'] as List<dynamic>?)?.map((e) => e as Object).toList(),
      copyrights: (json['copyrights'] as List<dynamic>?)
          ?.map((e) => CopyrightEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AlbumSearchResponseEntityToJson(
        AlbumSearchResponseEntity instance) =>
    <String, dynamic>{
      'album_type': instance.albumType,
      'artists': instance.artists,
      'available_markets': instance.availableMarkets,
      'copyrights': instance.copyrights,
      'external_ids': instance.externalIds,
      'external_urls': instance.externalUrls,
      'genres': instance.genres,
      'href': instance.href?.toString(),
      'id': instance.id,
      'images': instance.images,
      'label': instance.label,
      'name': instance.name,
      'popularity': instance.popularity,
      'release_date_precision': instance.releaseDatePrecision,
      'total_tracks': instance.totalTracks,
      'tracks': instance.tracks,
      'type': instance.type,
      'uri': instance.uri,
    };

Tracks _$TracksFromJson(Map<String, dynamic> json) => Tracks(
      href: json['href'] == null ? null : Uri.parse(json['href'] as String),
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => Item.fromJson(e as Map<String, dynamic>))
          .toList(),
      limit: json['limit'] as int?,
      next: json['next'],
      offset: json['offset'] as int?,
      previous: json['previous'],
      total: json['total'] as int?,
    );

Map<String, dynamic> _$TracksToJson(Tracks instance) => <String, dynamic>{
      'href': instance.href?.toString(),
      'items': instance.items,
      'limit': instance.limit,
      'next': instance.next,
      'offset': instance.offset,
      'previous': instance.previous,
      'total': instance.total,
    };

Item _$ItemFromJson(Map<String, dynamic> json) => Item(
      artists: (json['artists'] as List<dynamic>?)
          ?.map((e) => ArtistEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      availableMarkets: (json['available_markets'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      discNumber: json['disc_number'] as int?,
      durationMs: json['duration_ms'] as int?,
      explicit: json['explicit'] as bool?,
      externalUrls: json['external_urls'] == null
          ? null
          : ExternalUrlsEntity.fromJson(
              json['external_urls'] as Map<String, dynamic>),
      href: json['href'] == null ? null : Uri.parse(json['href'] as String),
      id: json['id'] as String?,
      isLocal: json['is_local'] as bool?,
      name: json['name'] as String?,
      previewUrl: json['preview_url'] == null
          ? null
          : Uri.parse(json['preview_url'] as String),
      trackNumber: json['track_number'] as int?,
      type: json['type'] as String?,
      uri: json['uri'] as String?,
    );

Map<String, dynamic> _$ItemToJson(Item instance) => <String, dynamic>{
      'artists': instance.artists,
      'available_markets': instance.availableMarkets,
      'disc_number': instance.discNumber,
      'duration_ms': instance.durationMs,
      'explicit': instance.explicit,
      'external_urls': instance.externalUrls,
      'href': instance.href?.toString(),
      'id': instance.id,
      'is_local': instance.isLocal,
      'name': instance.name,
      'preview_url': instance.previewUrl?.toString(),
      'track_number': instance.trackNumber,
      'type': instance.type,
      'uri': instance.uri,
    };

ArtistSearchResponseEntity _$ArtistSearchResponseEntityFromJson(
        Map<String, dynamic> json) =>
    ArtistSearchResponseEntity(
      json['external_urls'] == null
          ? null
          : ExternalUrlsEntity.fromJson(
              json['external_urls'] as Map<String, dynamic>),
      json['followers'] == null
          ? null
          : FollowersEntity.fromJson(json['followers'] as Map<String, dynamic>),
      (json['genres'] as List<dynamic>?)?.map((e) => e as String).toList(),
      json['href'] == null ? null : Uri.parse(json['href'] as String),
      json['id'] as String?,
      (json['images'] as List<dynamic>?)
          ?.map((e) => ImageEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['name'] as String?,
      json['popularity'] as int?,
      json['type'] as String?,
      json['uri'] as String?,
    );

Map<String, dynamic> _$ArtistSearchResponseEntityToJson(
        ArtistSearchResponseEntity instance) =>
    <String, dynamic>{
      'external_urls': instance.externalUrls,
      'followers': instance.followers,
      'genres': instance.genres,
      'href': instance.href?.toString(),
      'id': instance.id,
      'images': instance.images,
      'name': instance.name,
      'popularity': instance.popularity,
      'type': instance.type,
      'uri': instance.uri,
    };

TrackSearchResponseEntity _$TrackSearchResponseEntityFromJson(
        Map<String, dynamic> json) =>
    TrackSearchResponseEntity(
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => ImageEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      album: json['album'] == null
          ? null
          : AlbumEntity.fromJson(json['album'] as Map<String, dynamic>),
      artists: (json['artists'] as List<dynamic>?)
          ?.map((e) => ArtistEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      availableMarkets: (json['available_markets'] as List<dynamic>?)
          ?.map((e) => e as Object)
          .toList(),
      discNumber: json['disc_number'] as int?,
      durationMs: json['duration_ms'] as int?,
      explicit: json['explicit'] as bool?,
      externalIds: json['external_ids'] == null
          ? null
          : ExternalIdsEntity.fromJson(
              json['external_ids'] as Map<String, dynamic>),
      externalUrls: json['external_urls'] == null
          ? null
          : ExternalUrlsEntity.fromJson(
              json['external_urls'] as Map<String, dynamic>),
      href: json['href'] as String?,
      id: json['id'] as String?,
      isLocal: json['is_local'] as bool?,
      name: json['name'] as String?,
      popularity: json['popularity'] as int?,
      previewUrl: json['preview_url'] as String?,
      trackNumber: json['track_number'] as int?,
      type: json['type'] as String?,
      uri: json['uri'] as String?,
    );

Map<String, dynamic> _$TrackSearchResponseEntityToJson(
        TrackSearchResponseEntity instance) =>
    <String, dynamic>{
      'album': instance.album,
      'artists': instance.artists,
      'available_markets': instance.availableMarkets,
      'disc_number': instance.discNumber,
      'duration_ms': instance.durationMs,
      'explicit': instance.explicit,
      'images': instance.images,
      'external_ids': instance.externalIds,
      'external_urls': instance.externalUrls,
      'href': instance.href,
      'id': instance.id,
      'is_local': instance.isLocal,
      'name': instance.name,
      'popularity': instance.popularity,
      'preview_url': instance.previewUrl,
      'track_number': instance.trackNumber,
      'type': instance.type,
      'uri': instance.uri,
    };

SearchResponseEntity _$SearchResponseEntityFromJson(
        Map<String, dynamic> json) =>
    SearchResponseEntity(
      artists: json['artists'] == null
          ? null
          : ArtistEntity.fromJson(json['artists'] as Map<String, dynamic>),
      albums: json['albums'] == null
          ? null
          : AlbumEntity.fromJson(json['albums'] as Map<String, dynamic>),
      tracks: json['tracks'] == null
          ? null
          : TrackEntity.fromJson(json['tracks'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SearchResponseEntityToJson(
        SearchResponseEntity instance) =>
    <String, dynamic>{
      'artists': instance.artists,
      'albums': instance.albums,
      'tracks': instance.tracks,
    };
