part of 'auth_bloc.dart';

abstract class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object> get props => [];
}

class AuthInitial extends AuthState {}

class AuthLoading extends AuthState {}

class TokenObtained extends AuthState {
  final AuthEntity authEntity;
  const TokenObtained(this.authEntity);
  @override
  List<Object> get props => [authEntity];
}

class AuthErrorState extends AuthState {
  final String errorMessage;
  const AuthErrorState(this.errorMessage);
  @override
  List<Object> get props => [errorMessage];
}
