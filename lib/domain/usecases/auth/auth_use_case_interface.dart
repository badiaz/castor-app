import 'package:castor_spotify_app/domain/entities/auth/auth_entity.dart';

abstract class AuthUseCaseInterface {
  Future<String> fetchAuthorizationCode({
    String redirectUri,
    String scope,
    String state,
  });
  Future<AuthEntity> fetchToken({
    String code,
  });
}
