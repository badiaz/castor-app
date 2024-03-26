import 'package:castor_spotify_app/data/repositories/auth/impl/auth_repository.dart';
import 'package:castor_spotify_app/data/repositories/spotify_search/impl/spotify_search_repository.dart';
import 'package:castor_spotify_app/domain/usecases/auth/auth_use_case_interface.dart';
import 'package:castor_spotify_app/domain/usecases/auth/impl/auth_use_case.dart';
import 'package:castor_spotify_app/domain/usecases/spotify_search/impl/spotify_search_use_case.dart';
import 'package:castor_spotify_app/domain/usecases/spotify_search/spotify_search_use_case.interface.dart';
import 'package:injector/injector.dart';

class DependencyInjection {
  static final Injector injector = Injector();

  static void initialize() {
    _registerRepositories();
    _registerUseCases();
  }

  static void _registerRepositories() {
    injector.registerSingleton<AuthRepository>(() => AuthRepository());
    injector.registerSingleton<SpotifySearchRepository>(
        () => SpotifySearchRepository());
  }

  static void _registerUseCases() {
    injector.registerSingleton<AuthUseCaseInterface>(() {
      final authRepository = injector.get<AuthRepository>();
      return AuthUseCase(authRepository);
    });
    injector.registerSingleton<SpotifySearchUseCaseInterface>(() {
      final spotifySearchRepository = injector.get<SpotifySearchRepository>();
      return SpotifySearchUseCase(spotifySearchRepository);
    });
  }

  static T get<T>() {
    return injector.get<T>();
  }
}
