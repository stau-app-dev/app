import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:staugustinechsnewapp/models/profile/user/user.dart';
import 'package:staugustinechsnewapp/models/shared/failure/failure.dart';
import 'package:staugustinechsnewapp/models/shared/success/success.dart';
import 'package:staugustinechsnewapp/models/socials/club/club.dart';
import 'package:staugustinechsnewapp/providers/profile/profile_api.dart';

@lazySingleton
class ProfileRepository {
  ProfileRepository();

  static Future<Either<Failure, User>> getUser(
      {required String id, required String email, required String name}) async {
    return await ProfileApi.getUser(id: id, email: email, name: name);
  }

  static Future<Either<Failure, Club>> addClub({
    required String description,
    required String email,
    required int joinPreference,
    required String name,
    required String pictureId,
  }) async {
    return await ProfileApi.addClub(
        name: name,
        description: description,
        email: email,
        pictureId: pictureId,
        joinPreference: joinPreference);
  }

  static Future<Either<Failure, User>> updateUserField({
    required String id,
    required String field,
    required dynamic value,
  }) async {
    return await ProfileApi.updateUserField(id: id, field: field, value: value);
  }
}
