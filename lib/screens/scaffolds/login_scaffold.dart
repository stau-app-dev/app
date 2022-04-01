import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:staugustinechsnewapp/screens/main/login_screen.dart';
import 'package:staugustinechsnewapp/utilities/auth/auth_bloc.dart';
import 'package:staugustinechsnewapp/utilities/navigation/nav_bloc.dart';
import 'package:staugustinechsnewapp/widgets/reusable/custom_snackbar.dart';

class LoginScaffold extends StatefulWidget {
  const LoginScaffold({Key? key}) : super(key: key);
  @override
  State<LoginScaffold> createState() => _LoginScaffoldState();
}

class _LoginScaffoldState extends State<LoginScaffold> {
  late AuthBloc authBloc;
  late NavBloc navBloc;

  @override
  void initState() {
    authBloc = BlocProvider.of<AuthBloc>(context);
    navBloc = BlocProvider.of<NavBloc>(context);
    authBloc.add(const AuthEvent.initializeFirebase());
    super.initState();
  }

  void onPressedClose() {
    navBloc.add(const NavEvent.setNavbarVisible(isVisible: true));
    navBloc.add(const NavEvent.changeScreen(screen: ENav.home));
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(listenWhen: (previous, current) {
      return (previous.firebaseApp == null && current.firebaseApp != null) ||
          (!previous.isAuthenticated && current.isAuthenticated) ||
          (previous.failure == null && current.failure != null);
    }, listener: (context, state) {
      if (state.failure != null) {
        useCustomSnackbar(
            context: context, message: state.failure!.message, isError: true);
        authBloc.add(const AuthEvent.resetFailSuccess());
      }
      if (state.firebaseApp != null) {
        authBloc.add(const AuthEvent.checkSignedIn());
      }
      if (state.isAuthenticated) {
        navBloc.add(const NavEvent.setNavbarVisible(isVisible: true));
        navBloc.add(const NavEvent.changeScreen(screen: ENav.home));
      }
    }, builder: (context, state) {
      return SafeArea(
        child: LoginScreen(
          onPressedClose: onPressedClose,
        ),
      );
    });
  }
}
