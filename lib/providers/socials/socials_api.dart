import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart';
import 'package:injectable/injectable.dart';
import 'package:staugustinechsnewapp/models/announcements/club_announcement/club_announcement.dart';
import 'package:staugustinechsnewapp/models/shared/failure/failure.dart';
import 'package:staugustinechsnewapp/models/shared/success/success.dart';
import 'package:staugustinechsnewapp/models/socials/club/club.dart';
import 'package:staugustinechsnewapp/models/socials/club_quick_access_item/club_quick_access_item.dart';
import 'package:staugustinechsnewapp/providers/socials/consts.dart';
import 'package:staugustinechsnewapp/providers/authclient.dart';

@Injectable()
class SocialsApi {
  static Future<Either<Failure, List<ClubQuickAccessItem>>> getUserClubs({
    required String userId,
  }) async {
    try {
      var uri = Uri.parse(getUserClubsEndpoint);
      uri = uri.replace(queryParameters: {
        'userId': userId,
      });
      Response res = await authClient.get(uri);
      if (res.statusCode == 200) {
        List<dynamic> data = json.decode(res.body)['data'];
        List<ClubQuickAccessItem> clubs = [];
        for (var i = 0; i < data.length; i++) {
          clubs.add(ClubQuickAccessItem.fromJson(data[i]));
        }
        return Right(clubs);
      } else {
        return const Left(Failure(message: errorGettingUserClubs));
      }
    } catch (e) {
      return const Left(Failure(message: errorGettingUserClubs));
    }
  }

  static Future<Either<Failure, List<ClubQuickAccessItem>>>
      getUserClubsNotJoined({
    required String userId,
  }) async {
    try {
      var uri = Uri.parse(getUserClubsNotJoinedEndpoint);
      uri = uri.replace(queryParameters: {
        'userId': userId,
      });
      Response res = await authClient.get(uri);
      if (res.statusCode == 200) {
        List<dynamic> data = json.decode(res.body)['data'];
        List<ClubQuickAccessItem> clubs = [];
        for (var i = 0; i < data.length; i++) {
          clubs.add(ClubQuickAccessItem.fromJson(data[i]));
        }
        return Right(clubs);
      } else {
        return const Left(Failure(message: errorGettingUserClubsNotJoined));
      }
    } catch (e) {
      return const Left(Failure(message: errorGettingUserClubsNotJoined));
    }
  }

  static Future<Either<Failure, Club>> getClub({
    required String clubId,
    required String pictureUrl,
  }) async {
    try {
      var uri = Uri.parse(getClubEndpoint);
      uri = uri.replace(queryParameters: {
        'clubId': clubId,
      });
      Response res = await authClient.get(uri);
      if (res.statusCode == 200) {
        dynamic data = json.decode(res.body)['data'];
        Club club =
            Club.fromJson({...data, 'id': clubId, 'pictureUrl': pictureUrl});
        return Right(club);
      } else {
        return const Left(Failure(message: errorGettingClub));
      }
    } catch (e) {
      return const Left(Failure(message: errorGettingClub));
    }
  }

  static Future<Either<Failure, Success>> addClub({
    required String description,
    required String email,
    required int joinPreference,
    required String name,
    required String pictureId,
  }) async {
    try {
      Response res = await authClient.post(
        Uri.parse(addClubEndpoint),
        body: json.encode({
          'description': description,
          'email': email,
          'joinPreference': joinPreference.toString(),
          'name': name,
          'pictureId': pictureId,
        }),
      );
      if (res.statusCode == 200) {
        String message = json.decode(res.body)['data']['message'] as String;
        return Right(Success(message: message));
      } else {
        return const Left(Failure(message: errorAddingClub));
      }
    } catch (e) {
      return const Left(Failure(message: errorAddingClub));
    }
  }

  static Future<Either<Failure, Success>> updateClub({
    required String clubId,
    required String description,
    required int joinPreference,
    required String name,
    required String pictureId,
  }) async {
    try {
      Response res = await authClient.put(
        Uri.parse(updateClubEndpoint),
        body: json.encode({
          'clubId': clubId,
          'description': description,
          'joinPreference': joinPreference.toString(),
          'name': name,
          'pictureId': pictureId,
        }),
      );
      if (res.statusCode == 200) {
        String message = json.decode(res.body)['data']['message'] as String;
        return Right(Success(message: message));
      } else {
        return const Left(Failure(message: errorUpdatingClub));
      }
    } catch (e) {
      return const Left(Failure(message: errorUpdatingClub));
    }
  }

  static Future<Either<Failure, Success>> addClubAnnouncement({
    required String clubId,
    required String clubName,
    required String content,
    required String creatorName,
  }) async {
    try {
      Response res = await authClient.post(
        Uri.parse(addClubAnnouncementEndpoint),
        body: json.encode({
          'clubId': clubId,
          'clubName': clubName,
          'content': content,
          'creatorName': creatorName,
        }),
      );
      if (res.statusCode == 200) {
        String message = json.decode(res.body)['data']['message'] as String;
        return Right(Success(message: message));
      } else {
        return const Left(Failure(message: errorAddingClubAnnouncement));
      }
    } catch (e) {
      return const Left(Failure(message: errorAddingClubAnnouncement));
    }
  }

  static Future<Either<Failure, Success>> deleteClubAnnouncement({
    required String id,
  }) async {
    try {
      Response res = await authClient.post(
        Uri.parse(deleteClubAnnouncementEndpoint),
        body: json.encode({
          'id': id,
        }),
      );
      if (res.statusCode == 200) {
        String message = json.decode(res.body)['data']['message'] as String;
        return Right(Success(message: message));
      } else {
        return const Left(Failure(message: errorDeletingClubAnnouncement));
      }
    } catch (e) {
      return const Left(Failure(message: errorDeletingClubAnnouncement));
    }
  }

  static Future<Either<Failure, List<ClubAnnouncement>>> getClubAnnouncements({
    required String clubId,
  }) async {
    try {
      var uri = Uri.parse(getClubAnnouncementsEndpoint);
      uri = uri.replace(queryParameters: {
        'clubId': clubId,
      });
      Response res = await authClient.get(uri);
      if (res.statusCode == 200) {
        List<dynamic> data = json.decode(res.body)['data'];
        List<ClubAnnouncement> announcements = [];
        for (var i = 0; i < data.length; i++) {
          announcements.add(ClubAnnouncement.fromJson(data[i]));
        }
        return Right(announcements);
      } else {
        return const Left(Failure(message: errorGettingClubAnnouncements));
      }
    } catch (e) {
      return const Left(Failure(message: errorGettingClubAnnouncements));
    }
  }

  static Future<Either<Failure, Success>> addUserToClub({
    required String clubId,
    required String userEmail,
  }) async {
    try {
      Response res = await authClient.post(
        Uri.parse(addUserToClubEndpoint),
        body: json.encode({
          'clubId': clubId,
          'userEmail': userEmail,
        }),
      );
      if (res.statusCode == 200) {
        String message = json.decode(res.body)['data']['message'] as String;
        return Right(Success(message: message));
      } else {
        return const Left(Failure(message: errorAddingUserToClub));
      }
    } catch (e) {
      return const Left(Failure(message: errorAddingUserToClub));
    }
  }

  static Future<Either<Failure, Success>> addUserToPendingClub({
    required String clubId,
    required String userEmail,
  }) async {
    try {
      Response res = await authClient.post(
        Uri.parse(addUserToPendingClubEndpoint),
        body: json.encode({
          'clubId': clubId,
          'userEmail': userEmail,
        }),
      );
      if (res.statusCode == 200) {
        String message = json.decode(res.body)['data']['message'] as String;
        return Right(Success(message: message));
      } else {
        return const Left(Failure(message: errorAddingUserToPendingClub));
      }
    } catch (e) {
      return const Left(Failure(message: errorAddingUserToPendingClub));
    }
  }

  static Future<Either<Failure, Success>> promoteUserToAdmin({
    required String clubId,
    required String userEmail,
  }) async {
    try {
      Response res = await authClient.post(
        Uri.parse(promoteUserToAdminEndpoint),
        body: json.encode({
          'clubId': clubId,
          'userEmail': userEmail,
        }),
      );
      if (res.statusCode == 200) {
        String message = json.decode(res.body)['data']['message'] as String;
        return Right(Success(message: message));
      } else {
        return const Left(Failure(message: errorPromotingUserToAdmin));
      }
    } catch (e) {
      return const Left(Failure(message: errorPromotingUserToAdmin));
    }
  }

  static Future<Either<Failure, Success>> removeUserFromClub({
    required String clubId,
    required String userEmail,
  }) async {
    try {
      Response res = await authClient.post(
        Uri.parse(removeUserFromClubEndpoint),
        body: json.encode({
          'clubId': clubId,
          'userEmail': userEmail,
        }),
      );
      if (res.statusCode == 200) {
        String message = json.decode(res.body)['data']['message'] as String;
        return Right(Success(message: message));
      } else {
        return const Left(Failure(message: errorRemovingUserFromClub));
      }
    } catch (e) {
      return const Left(Failure(message: errorRemovingUserFromClub));
    }
  }
}
