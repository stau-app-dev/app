import 'package:flutter/material.dart';
import 'package:staugustinechsnewapp/screens/layout/page_layout.dart';
import 'package:staugustinechsnewapp/styles.dart';
import 'package:staugustinechsnewapp/utilities/auth/auth_bloc.dart';
import 'package:staugustinechsnewapp/widgets/login/google_sign_in_button.dart';

class LoginScreen extends StatelessWidget {
  final void Function() onPressedClose;
  final AuthBloc authBloc;

  const LoginScreen(
      {Key? key, required this.onPressedClose, required this.authBloc})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageLayout(
      children: [
        IconButton(
            onPressed: onPressedClose, icon: const Icon(Icons.close_rounded)),
        Image.asset(
          'assets/logos/sta_logo.png',
          height: 160,
        ),
        const SizedBox(height: 20),
        const Text(
          'St. Augustine CHS',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Styles.primary,
            fontSize: 26,
          ),
        ),
        GoogleSignInButton(
          authBloc: authBloc,
        ),
      ],
    );
  }
}
