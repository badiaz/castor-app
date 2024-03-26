// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'track_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrackEntity _$TrackEntityFromJson(Map<String, dynamic> json) => TrackEntity(
      href: json['href'] == null ? null : Uri.parse(json['href'] as String),
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => TracksItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      limit: json['limit'] as int?,
      next: json['next'] == null ? null : Uri.parse(json['next'] as String),
      offset: json['offset'] as int?,
      previous: json['previous'],
      total: json['total'] as int?,
    );

Map<String, dynamic> _$TrackEntityToJson(TrackEntity instance) =>
    <String, dynamic>{
      'href': instance.href?.toString(),
      'items': instance.items,
      'limit': instance.limit,
      'next': instance.next?.toString(),
      'offset': instance.offset,
      'previous': instance.previous,
      'total': instance.total,
    };

TracksItem _$TracksItemFromJson(Map<String, dynamic> json) => TracksItem(
      album: json['album'] == null
          ? null
          : AlbumEntity.fromJson(json['album'] as Map<String, dynamic>),
      artists: (json['artists'] as List<dynamic>?)
          ?.map((e) => ArtistEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      availableMarkets: (json['available_markets'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      discNumber: json['disc_number'] as int?,
      durationMs: json['duration_ms'] as int?,
      explicit: json['explicit'] as bool?,
      href: json['href'] == null ? null : Uri.parse(json['href'] as String),
      id: json['id'] as String?,
      isLocal: json['is_local'] as bool?,
      name: json['name'] as String?,
      popularity: json['popularity'] as int?,
      previewUrl: json['preview_url'] == null
          ? null
          : Uri.parse(json['preview_url'] as String),
      trackNumber: json['track_number'] as int?,
      type: json['type'] as String?,
      uri: json['uri'] as String?,
    );

Map<String, dynamic> _$TracksItemToJson(TracksItem instance) =>
    <String, dynamic>{
      'album': instance.album,
      'artists': instance.artists,
      'available_markets': instance.availableMarkets,
      'disc_number': instance.discNumber,
      'duration_ms': instance.durationMs,
      'explicit': instance.explicit,
      'href': instance.href?.toString(),
      'id': instance.id,
      'is_local': instance.isLocal,
      'name': instance.name,
      'popularity': instance.popularity,
      'preview_url': instance.previewUrl?.toString(),
      'track_number': instance.trackNumber,
      'type': instance.type,
      'uri': instance.uri,
    };
