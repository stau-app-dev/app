part of 'socials_bloc.dart';

@freezed
class SocialsEvent with _$SocialsEvent {
  const factory SocialsEvent.addClub(
      {required String description,
      required String email,
      required int joinPreference,
      required String name,
      required String pictureId,
      required File picture,
      required String path,
      required String fileName}) = _addClub;
  const factory SocialsEvent.resetAddedClubId() = _resetAddedClubId;
  const factory SocialsEvent.resetFailSuccess() = _resetFailSuccess;
}