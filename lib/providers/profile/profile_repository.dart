import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:staugustinechsnewapp/models/profile/user/user.dart';
import 'package:staugustinechsnewapp/models/shared/failure/failure.dart';
import 'package:staugustinechsnewapp/providers/profile/profile_api.dart';

@lazySingleton
class ProfileRepository {
  ProfileRepository();

  static Future<Either<Failure, User>> getUser(
      {required String id, required String email, required String name}) async {
    return await ProfileApi.getUser(id: id, email: email, name: name);
  }
}
