// From: https://blog.codemagic.io/firebase-authentication-google-sign-in-using-flutter/

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:staugustinechsnewapp/models/shared/failure/failure.dart';
import 'package:staugustinechsnewapp/models/shared/success/success.dart';

@Injectable()
class AuthApi {
  static Future<Either<Failure, FirebaseApp>> initializeFirebase() async {
    // TODO: Add auto login logic
    try {
      FirebaseApp firebaseApp = await Firebase.initializeApp();
      return Right(firebaseApp);
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }

  static Future<Either<Failure, User?>> signInWithGoogle() async {
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

        try {
          final UserCredential userCredential =
              await auth.signInWithCredential(credential);
          user = userCredential.user;
        } on FirebaseAuthException catch (e) {
          if (e.code == 'account-exists-with-different-credential') {
            return const Left(Failure(
                message:
                    'The account already exists with different credentials.'));
          } else if (e.code == 'invalid-credential') {
            return const Left(Failure(
                message:
                    'The account already exists with different credentials.'));
          }
        }
      }
      return Right(user);
    } catch (e) {
      return const Left(Failure(
          message: 'Error occurred with Google Sign-In. Try again later.'));
    }
  }

  static Future<Either<Failure, Success>> signOut() async {
    try {
      FirebaseAuth auth = FirebaseAuth.instance;
      await auth.signOut();
      return const Right(Success());
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }
}
