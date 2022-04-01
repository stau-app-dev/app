import 'package:flutter/material.dart';
import 'package:staugustinechsnewapp/styles.dart';
import 'package:staugustinechsnewapp/widgets/login/google_sign_in_button.dart';

class LoginScreen extends StatefulWidget {
  final void Function() onPressedClose;

  const LoginScreen({Key? key, required this.onPressedClose}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: Styles.mainOutsidePadding,
      children: <Widget>[
        const SizedBox(height: Styles.mainVerticalPadding),
        IconButton(
            onPressed: widget.onPressedClose, icon: const Icon(Icons.close)),
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
        const GoogleSignInButton(),
        const SizedBox(height: Styles.mainVerticalPadding),
      ],
    );
  }
}
