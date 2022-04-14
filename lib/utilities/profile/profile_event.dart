part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.getUser(
      {required String id,
      required String email,
      required String name}) = _getUser;
  const factory ProfileEvent.updateUserField(
      {required String field, required dynamic value}) = _updateUserField;
  const factory ProfileEvent.resetFailSuccess() = _resetFailSuccess;
}
