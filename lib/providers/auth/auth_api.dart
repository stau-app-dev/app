// From: https://blog.codemagic.io/firebase-authentication-google-sign-in-using-flutter/

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:staugustinechsnewapp/models/shared/failure/failure.dart';

class AuthApi {
  Future<Either<Failure, FirebaseApp>> initializeFirebase() async {
    // TODO: Add auto login logic
    try {
      FirebaseApp firebaseApp = await Firebase.initializeApp();
      return Right(firebaseApp);
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }

  Future<Either<Failure, User?>> signInWithGoogle(
      {required BuildContext context}) async {
    try {
      FirebaseAuth auth = FirebaseAuth.instance;
      User? user;

      final GoogleSignIn googleSignIn = GoogleSignIn();

      final GoogleSignInAccount? googleSignInAccount =
          await googleSignIn.signIn();

      if (googleSignInAccount != null) {
        final GoogleSignInAuthentication googleSignInAuthentication =
            await googleSignInAccount.authentication;

        final AuthCredential credential = GoogleAuthProvider.credential(
          accessToken: googleSignInAuthentication.accessToken,
          idToken: googleSignInAuthentication.idToken,
        );

        final UserCredential userCredential =
            await auth.signInWithCredential(credential);

        user = userCredential.user;
      }

      return Right(user);
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }
}
