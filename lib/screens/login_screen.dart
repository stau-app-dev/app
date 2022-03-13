import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:staugustinechsnewapp/styles.dart';
import 'package:staugustinechsnewapp/utilities/auth/auth_bloc.dart';
import 'package:staugustinechsnewapp/utilities/navigation/nav_bloc.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late AuthBloc authBloc;
  late NavBloc navBloc;

  @override
  void initState() {
    authBloc = BlocProvider.of<AuthBloc>(context);
    navBloc = BlocProvider.of<NavBloc>(context);
    super.initState();
  }

  void onPressedLogin() {
    authBloc.add(const AuthEvent.logIn(email: 'email', password: 'pass'));
    navBloc.add(const NavEvent.setNavbarVisible(isVisible: true));
    navBloc.add(const NavEvent.changeScreen(screen: ENav.home));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: Styles.mainOutsidePadding,
        children: <Widget>[
          const SizedBox(height: Styles.mainVerticalPadding),
          TextButton(onPressed: onPressedLogin, child: const Text('Login')),
          const SizedBox(height: Styles.mainVerticalPadding),
        ],
      ),
    );
  }
}
