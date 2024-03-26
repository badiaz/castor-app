import 'dart:convert';
import 'package:castor_spotify_app/domain/entities/responses/responses_entities.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;
import 'package:castor_spotify_app/data/repositories/spotify_search/spotify_search_repository_interface.dart';

class SpotifySearchRepository implements SpotifySearchRepositoryInterface {
  static String? clientId = dotenv.env['SPOTIFY_CLIENT_ID'];
  static String? clientSecret = dotenv.env['SPOTIFY_CLIENT_SECRET'];
  final FlutterSecureStorage secureStorage = const FlutterSecureStorage();

  @override
  Future<List<dynamic>> searchSongs(String searchTerm, int index) async {
    final basicAuth = await secureStorage.read(key: 'access_token');
    print(basicAuth);
    String type;
    switch (index) {
      case 0:
        type = 'track';
        break;
      case 1:
        type = 'artist';
        break;
      case 2:
        type = 'album';
        break;
      default:
        throw ArgumentError('Invalid index: $index');
    }

    final String url =
        'https://api.spotify.com/v1/search?q=$searchTerm&type=$type';
    final http.Response response = await http.get(
      Uri.parse(url),
      headers: <String, String>{'Authorization': 'Bearer $basicAuth!'},
    );

    if (response.statusCode == 200) {
      final responseData = json.decode(response.body);
      if (index == 0) {
        final List<dynamic> items = responseData['tracks']['items'];
        final List<TrackSearchResponseEntity> tracks = items
            .map((item) => TrackSearchResponseEntity.fromJson(item))
            .toList();
        return tracks;
      }
      if (index == 1) {
        final List<dynamic> items = responseData['artists']['items'];
        final List<ArtistSearchResponseEntity> artists = items
            .map((item) => ArtistSearchResponseEntity.fromJson(item))
            .toList();
        print(artists[0].images!.first);
        return artists;
      }
      if (index == 2) {
        final List<dynamic> items = responseData['albums']['items'];
        final List<AlbumSearchResponseEntity> albums = items
            .map((item) => AlbumSearchResponseEntity.fromJson(item))
            .toList();
        return albums;
      } else {
        throw Exception('Failed to search songs');
      }
    } else {
      throw Exception('Failed to search songs');
    }
  }
}
