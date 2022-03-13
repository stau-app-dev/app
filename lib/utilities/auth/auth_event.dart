part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.logIn(
      {required String email, required String password}) = _logIn;
  const factory AuthEvent.logOut() = _logOut;
}
