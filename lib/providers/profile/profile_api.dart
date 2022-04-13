import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart';
import 'package:injectable/injectable.dart';
import 'package:staugustinechsnewapp/models/profile/user/user.dart';
import 'package:staugustinechsnewapp/models/shared/failure/failure.dart';
import 'package:staugustinechsnewapp/models/shared/success/success.dart';
import 'package:staugustinechsnewapp/providers/profile/consts.dart';

@Injectable()
class ProfileApi {
  static Future<Either<Failure, User>> getUser(
      {required String id, required String email, required String name}) async {
    try {
      var uri = Uri.parse(getUserEndpoint);
      uri = uri.replace(queryParameters: {
        'id': id,
        'email': email,
        'name': name,
      });
      Response res = await get(uri);
      if (res.statusCode == 200) {
        User user = User.fromJson(json.decode(res.body)['data']['user']);
        return Right(user);
      } else {
        return const Left(Failure(message: errorGettingUser));
      }
    } catch (e) {
      return const Left(Failure(message: errorGettingUser));
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
        String message = json.decode(res.body)['data']['message'] as String;
        return Right(Success(message: message));
      } else {
        return const Left(Failure(message: errorAddingClub));
      }
    } catch (e) {
      return const Left(Failure(message: errorAddingClub));
    }
  }
}
