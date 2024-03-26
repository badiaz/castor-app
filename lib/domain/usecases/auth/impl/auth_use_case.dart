import 'package:castor_spotify_app/domain/entities/auth/auth_entity.dart';
import 'package:castor_spotify_app/data/repositories/auth/impl/auth_repository.dart';
import 'package:castor_spotify_app/domain/usecases/auth/auth_use_case_interface.dart';

class AuthUseCase implements AuthUseCaseInterface {
  final AuthRepository authRepository;
  AuthUseCase(this.authRepository);

  @override
  Future<String> fetchAuthorizationCode(
      {String redirectUri = '', String scope = '', String state = ''}) {
    return authRepository.fetchAuthorizationCode(redirectUri, scope, state);
  }

  @override
  Future<AuthEntity> fetchToken({String code = ''}) {
    return authRepository.fetchToken(code: code);
  }
}
