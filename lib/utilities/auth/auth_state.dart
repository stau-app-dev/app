part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    @Default(false) bool isAuthenticated,
    Failure? failure,
    Success? success,
  }) = _AuthState;
  factory AuthState.initial() => const AuthState();
}
