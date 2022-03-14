import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:staugustinechsnewapp/models/shared/failure/failure.dart';
import 'package:staugustinechsnewapp/providers/auth/auth_api.dart';

@lazySingleton
class AuthRepository {
  AuthApi authApi;

  AuthRepository(
    this.authApi,
  );

  Future<Either<Failure, FirebaseApp>> initializeFirebase() async {
    return await authApi.initializeFirebase();
  }

  Future<Either<Failure, User?>> signInWithGoogle(BuildContext context) async {
    return await authApi.signInWithGoogle(context: context);
  }
}
