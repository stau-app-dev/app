import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart';
import 'package:injectable/injectable.dart';
import 'package:staugustinechsnewapp/models/shared/failure/failure.dart';
import 'package:staugustinechsnewapp/models/socials/club/club.dart';
import 'package:staugustinechsnewapp/providers/socials/consts.dart';

@Injectable()
class SocialsApi {
  static Future<Either<Failure, Club>> addClub({
    required String description,
    required String email,
    required int joinPreference,
    required String name,
    required String pictureId,
  }) async {
    try {
      Response res = await post(
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
        Club club = Club.fromJson(json.decode(res.body)['data']['club']);
        return Right(club);
      } else {
        return const Left(Failure(message: errorAddingClub));
      }
    } catch (e) {
      return const Left(Failure(message: errorAddingClub));
    }
  }
}
