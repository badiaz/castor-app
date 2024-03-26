abstract class SpotifySearchRepositoryInterface {
  Future<List<dynamic>> searchSongs(String searchTerm, int index);
}
