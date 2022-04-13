part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.getUser(
      {required String id,
      required String email,
      required String name}) = _getUser;
  const factory ProfileEvent.uploadImageFile(
      {required File picture,
      required String path,
      required String fileName}) = _uploadImageFile;
  const factory ProfileEvent.addClub({
    required String description,
    required String email,
    required int joinPreference,
    required String name,
    required String pictureId,
  }) = _addClub;
  const factory ProfileEvent.resetFailSuccess() = _resetFailSuccess;
}
