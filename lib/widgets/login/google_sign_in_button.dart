// From: https://blog.codemagic.io/firebase-authentication-google-sign-in-using-flutter/

import 'package:flutter/material.dart';
import 'package:staugustinechsnewapp/utilities/auth/auth_bloc.dart';

class GoogleSignInButton extends StatelessWidget {
  final AuthBloc authBloc;

  const GoogleSignInButton({Key? key, required this.authBloc})
      : super(key: key);

  void onPressedSignIn() async {
    authBloc.add(const AuthEvent.signIn());
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: OutlinedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.white),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
            ),
          ),
        ),
        onPressed: onPressedSignIn,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Image(
                image: AssetImage('assets/images/google_logo.png'),
                height: 35.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text('Sign in with Google',
                    style: Theme.of(context).textTheme.bodyText1),
              )
            ],
          ),
        ),
      ),
    );
  }
}
