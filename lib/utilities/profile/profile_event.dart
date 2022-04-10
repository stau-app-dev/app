part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.getUser(
      {required String id,
      required String email,
      required String msgToken,
      required String name}) = _getUser;
  const factory ProfileEvent.resetFailSuccess() = _resetFailSuccess;
}
