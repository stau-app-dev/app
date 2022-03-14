part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.initializeFirebase() = _initializeFirebase;
  const factory AuthEvent.signIn() = _signIn;
  const factory AuthEvent.signOut() = _signOut;
  const factory AuthEvent.resetFailSuccess() = _resetFailSuccess;
}
