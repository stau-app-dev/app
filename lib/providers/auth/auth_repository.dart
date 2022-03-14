import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:injectable/injectable.dart';
import 'package:staugustinechsnewapp/models/shared/failure/failure.dart';
import 'package:staugustinechsnewapp/models/shared/success/success.dart';
import 'package:staugustinechsnewapp/providers/auth/auth_api.dart';

@lazySingleton
class AuthRepository {
  AuthRepository();

  static Future<Either<Failure, FirebaseApp>> initializeFirebase() async {
    return await AuthApi.initializeFirebase();
  }

  static Future<Either<Failure, User?>> checkSignedIn() async {
    return await AuthApi.checkSignedIn();
  }

  static Future<Either<Failure, User?>> signInWithGoogle() async {
    return await AuthApi.signInWithGoogle();
  }

  static Future<Either<Failure, Success>> signOut() async {
    return await AuthApi.signOut();
  }
}
