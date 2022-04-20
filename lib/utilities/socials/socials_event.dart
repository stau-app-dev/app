part of 'socials_bloc.dart';

@freezed
class SocialsEvent with _$SocialsEvent {
  const factory SocialsEvent.getUserClubs({required String userId}) =
      _getUserClubs;
  const factory SocialsEvent.getUserClubsNotJoined({required String userId}) =
      _getUserClubsNotJoined;
  const factory SocialsEvent.getClub(
      {required String clubId, required String pictureUrl}) = _getClub;
  const factory SocialsEvent.addClub(
      {required String description,
      required String email,
      required int joinPreference,
      required String name,
      required String pictureId,
      required File picture,
      required String path,
      required String fileName}) = _addClub;
  const factory SocialsEvent.addClubAnnouncement(
      {required String clubId,
      required String clubName,
      required String content,
      required String creatorName}) = _addClubAnnouncement;
  const factory SocialsEvent.deleteClubAnnouncement({required String id}) =
      _deleteClubAnnouncement;
  const factory SocialsEvent.getClubAnnouncements({required String clubId}) =
      _getClubAnnouncements;
  const factory SocialsEvent.addUserToClub(
      {required String clubId, required String userEmail}) = _addUserToClub;
  const factory SocialsEvent.addUserToPendingClub(
      {required String clubId,
      required String userEmail}) = _addUserToPendingClub;
  const factory SocialsEvent.removeUserFromClub(
      {required String clubId,
      required String userEmail}) = _removeUserFromClub;
  const factory SocialsEvent.resetClub() = _resetClub;
  const factory SocialsEvent.resetFailSuccess() = _resetFailSuccess;
}
