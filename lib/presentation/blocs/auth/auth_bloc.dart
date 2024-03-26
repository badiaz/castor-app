import 'dart:math';

import 'package:castor_spotify_app/domain/entities/auth/auth_entity.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:castor_spotify_app/domain/usecases/auth/auth_use_case_interface.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthUseCaseInterface authUseCase;
  final FlutterSecureStorage secureStorage = const FlutterSecureStorage();
  AuthBloc({required this.authUseCase}) : super(AuthInitial()) {
    on<FetchAuthCodeEvent>((event, emit) async {
      String code = await authUseCase.fetchAuthorizationCode(
          redirectUri: 'valid-scheme',
          scope: 'playlist-read-private playlist-read-collaborative',
          state: generateRandomString(16));
      if (code != '') {
        add(FetchTokenEvent(code));
      } else {
        emit(AuthErrorState(code));
      }
    });

    on<FetchTokenEvent>((event, emit) async {
      try {
        var authEntity = await authUseCase.fetchToken(code: event.code);
        await secureStorage.write(
            key: 'access_token', value: authEntity.accessToken);
        emit(TokenObtained(authEntity));
      } catch (e) {
        emit(AuthErrorState(e.toString()));
      }
    });
  }
}

String generateRandomString(int length) {
  const chars = 'abcdefghijklmnopqrstuvwxyz0123456789';
  final random = Random();
  final codeUnits = List.generate(
    length,
    (index) => chars.codeUnitAt(random.nextInt(chars.length)),
  );
  return String.fromCharCodes(codeUnits);
}
