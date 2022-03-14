import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:staugustinechsnewapp/styles.dart';
import 'package:staugustinechsnewapp/utilities/auth/auth_bloc.dart';
import 'package:staugustinechsnewapp/utilities/navigation/nav_bloc.dart';
import 'package:staugustinechsnewapp/widgets/login/google_sign_in_button.dart';
import 'package:staugustinechsnewapp/widgets/reusable/custom_snackbar.dart';

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
    authBloc.add(const AuthEvent.initializeFirebase());
    super.initState();
  }

  void onPressedLogin() {
    authBloc.add(const AuthEvent.signIn());
    navBloc.add(const NavEvent.setNavbarVisible(isVisible: true));
    navBloc.add(const NavEvent.changeScreen(screen: ENav.home));
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(listener: (context, state) {
      if (state.failure != null) {
        useCustomSnackbar(
            context: context, message: state.failure!.message, isError: true);
        authBloc.add(const AuthEvent.resetFailSuccess());
      }
      if (state.user != null) {
        navBloc.add(const NavEvent.setNavbarVisible(isVisible: true));
        navBloc.add(const NavEvent.changeScreen(screen: ENav.home));
      }
    }, builder: (context, state) {
      return SafeArea(
        child: ListView(
          padding: Styles.mainOutsidePadding,
          children: <Widget>[
            const SizedBox(height: Styles.mainVerticalPadding),
            // TextButton(onPressed: onPressedLogin, child: const Text('Login')),
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
        ),
      );
    });
  }
}
