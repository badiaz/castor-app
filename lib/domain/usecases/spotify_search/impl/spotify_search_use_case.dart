import 'package:castor_spotify_app/data/repositories/spotify_search/impl/spotify_search_repository.dart';
import 'package:castor_spotify_app/domain/usecases/spotify_search/spotify_search_use_case.interface.dart';

class SpotifySearchUseCase implements SpotifySearchUseCaseInterface {
  final SpotifySearchRepository spotifySearchRepository;
  SpotifySearchUseCase(this.spotifySearchRepository);

  @override
  Future<List<dynamic>> searchSongs(String searchTerm, int index) {
    return spotifySearchRepository.searchSongs(searchTerm, index);
  }
}
