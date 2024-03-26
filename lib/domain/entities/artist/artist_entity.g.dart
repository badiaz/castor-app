// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'artist_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArtistEntity _$ArtistEntityFromJson(Map<String, dynamic> json) => ArtistEntity(
      href: json['href'] == null ? null : Uri.parse(json['href'] as String),
      artist: (json['artist'] as List<dynamic>?)
          ?.map((e) => ArtistsItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String?,
      type: json['type'] as String?,
      limit: json['limit'] as int?,
      next: json['next'] == null ? null : Uri.parse(json['next'] as String),
      offset: json['offset'] as int?,
      previous: json['previous'],
      total: json['total'] as int?,
    );

Map<String, dynamic> _$ArtistEntityToJson(ArtistEntity instance) =>
    <String, dynamic>{
      'href': instance.href?.toString(),
      'artist': instance.artist,
      'name': instance.name,
      'type': instance.type,
      'limit': instance.limit,
      'next': instance.next?.toString(),
      'offset': instance.offset,
      'previous': instance.previous,
      'total': instance.total,
    };

ArtistsItem _$ArtistsItemFromJson(Map<String, dynamic> json) => ArtistsItem(
      href: json['href'] == null ? null : Uri.parse(json['href'] as String),
      id: json['id'] as String?,
      name: json['name'] as String?,
      popularity: json['popularity'] as int?,
      uri: json['uri'] as String?,
      genres:
          (json['genres'] as List<dynamic>?)?.map((e) => e as String).toList(),
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => ImageEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ArtistsItemToJson(ArtistsItem instance) =>
    <String, dynamic>{
      'genres': instance.genres,
      'href': instance.href?.toString(),
      'id': instance.id,
      'images': instance.images,
      'name': instance.name,
      'popularity': instance.popularity,
      'uri': instance.uri,
    };
