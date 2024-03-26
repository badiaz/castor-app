abstract class SpotifySearchUseCaseInterface {
  Future<List<dynamic>> searchSongs(String searchTerm, int index);
}
