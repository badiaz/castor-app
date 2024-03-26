part of 'auth_bloc.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();
  @override
  List<Object> get props => [];
}

class FetchAuthCodeEvent extends AuthEvent {}

class FetchTokenEvent extends AuthEvent {
  final String code;
  const FetchTokenEvent(this.code);
  @override
  List<Object> get props => [code];
}

class AuthErrorEvent extends AuthEvent {
  final String errorMessage;
  const AuthErrorEvent(this.errorMessage);
  @override
  List<Object> get props => [errorMessage];
}
