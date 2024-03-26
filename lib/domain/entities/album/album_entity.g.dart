// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'album_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AlbumEntity _$AlbumEntityFromJson(Map<String, dynamic> json) => AlbumEntity(
      href: json['href'] == null ? null : Uri.parse(json['href'] as String),
      artists: (json['artists'] as List<dynamic>?)
          ?.map((e) => AlbumElement.fromJson(e as Map<String, dynamic>))
          .toList(),
      limit: json['limit'] as int?,
      next: json['next'] == null ? null : Uri.parse(json['next'] as String),
      offset: json['offset'] as int?,
      previous: json['previous'],
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => ImageEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: json['total'] as int?,
    );

Map<String, dynamic> _$AlbumEntityToJson(AlbumEntity instance) =>
    <String, dynamic>{
      'href': instance.href?.toString(),
      'artists': instance.artists,
      'limit': instance.limit,
      'next': instance.next?.toString(),
      'offset': instance.offset,
      'previous': instance.previous,
      'images': instance.images,
      'total': instance.total,
    };

AlbumElement _$AlbumElementFromJson(Map<String, dynamic> json) => AlbumElement(
      artists: (json['artists'] as List<dynamic>?)
          ?.map((e) => ArtistEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      availableMarkets: (json['available_markets'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      href: json['href'] == null ? null : Uri.parse(json['href'] as String),
      id: json['id'] as String?,
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => ImageEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String?,
      releaseDate: json['release_date'] as String?,
      totalTracks: json['total_tracks'] as int?,
      type: json['type'] as String?,
      uri: json['uri'] as String?,
    );

Map<String, dynamic> _$AlbumElementToJson(AlbumElement instance) =>
    <String, dynamic>{
      'artists': instance.artists,
      'available_markets': instance.availableMarkets,
      'href': instance.href?.toString(),
      'id': instance.id,
      'images': instance.images,
      'name': instance.name,
      'release_date': instance.releaseDate,
      'total_tracks': instance.totalTracks,
      'type': instance.type,
      'uri': instance.uri,
    };
