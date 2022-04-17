import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:staugustinechsnewapp/models/announcements/club_announcement/club_announcement.dart';
import 'package:staugustinechsnewapp/models/shared/failure/failure.dart';
import 'package:staugustinechsnewapp/models/shared/success/success.dart';
import 'package:staugustinechsnewapp/models/socials/club/club.dart';
import 'package:staugustinechsnewapp/models/socials/club_quick_access_item/club_quick_access_item.dart';
import 'package:staugustinechsnewapp/providers/socials/socials_api.dart';

@lazySingleton
class SocialsRepository {
  SocialsRepository();

  static Future<Either<Failure, List<ClubQuickAccessItem>>> getUserClubs(
      {required String userId}) async {
    return await SocialsApi.getUserClubs(userId: userId);
  }

  static Future<Either<Failure, Club>> getClub(
      {required String clubId, required String pictureUrl}) async {
    return await SocialsApi.getClub(clubId: clubId, pictureUrl: pictureUrl);
  }

  static Future<Either<Failure, Success>> addClub({
    required String description,
    required String email,
    required int joinPreference,
    required String name,
    required String pictureId,
  }) async {
    return await SocialsApi.addClub(
        name: name,
        description: description,
        email: email,
        pictureId: pictureId,
        joinPreference: joinPreference);
  }

  static Future<Either<Failure, Success>> addClubAnnouncement({
    required String clubId,
    required String clubName,
    required String content,
    required String creatorName,
  }) async {
    return await SocialsApi.addClubAnnouncement(
        clubId: clubId,
        clubName: clubName,
        content: content,
        creatorName: creatorName);
  }

  static Future<Either<Failure, List<ClubAnnouncement>>> getClubAnnouncements(
      {required String clubId}) async {
    return await SocialsApi.getClubAnnouncements(clubId: clubId);
  }

  static Future<Either<Failure, Success>> addUserToClub({
    required String clubId,
    required String userEmail,
  }) async {
    return await SocialsApi.addUserToClub(clubId: clubId, userEmail: userEmail);
  }

  static Future<Either<Failure, Success>> addUserToPendingClub({
    required String clubId,
    required String userEmail,
  }) async {
    return await SocialsApi.addUserToPendingClub(
        clubId: clubId, userEmail: userEmail);
  }

  static Future<Either<Failure, Success>> removeUserFromClub({
    required String clubId,
    required String userEmail,
  }) async {
    return await SocialsApi.removeUserFromClub(
        clubId: clubId, userEmail: userEmail);
  }
}
