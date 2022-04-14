import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:staugustinechsnewapp/screens/main/login_screen.dart';
import 'package:staugustinechsnewapp/utilities/auth/auth_bloc.dart';
import 'package:staugustinechsnewapp/utilities/navigation/nav_bloc.dart';
import 'package:staugustinechsnewapp/utilities/profile/profile_bloc.dart';
import 'package:staugustinechsnewapp/widgets/reusable/custom_snackbar.dart';

class LoginScaffold extends StatefulWidget {
  const LoginScaffold({Key? key}) : super(key: key);
  @override
  State<LoginScaffold> createState() => _LoginScaffoldState();
}

class _LoginScaffoldState extends State<LoginScaffold> {
  late AuthBloc authBloc;
  late NavBloc navBloc;
  late ProfileBloc profileBloc;

  @override
  void initState() {
    authBloc = BlocProvider.of<AuthBloc>(context);
    navBloc = BlocProvider.of<NavBloc>(context);
    profileBloc = BlocProvider.of<ProfileBloc>(context);
    authBloc.add(const AuthEvent.initializeFirebase());
    super.initState();
  }

  void onPressedClose() {
    navBloc.add(const NavEvent.setNavbarVisible(isVisible: true));
    navBloc.add(const NavEvent.changeScreen(screen: ENav.home));
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProfileBloc, ProfileState>(
        listenWhen: ((previous, current) {
      return (previous.user == null && current.user != null) ||
          (previous.failure == null && current.failure != null);
    }), listener: (context, profileState) {
      if (profileState.user != null) {
        navBloc.add(const NavEvent.setNavbarVisible(isVisible: true));
        navBloc.add(const NavEvent.changeScreen(screen: ENav.home));
      }
    }, builder: (context, profileState) {
      return BlocConsumer<AuthBloc, AuthState>(listenWhen: (previous, current) {
        return (previous.firebaseApp == null && current.firebaseApp != null) ||
            (!previous.isAuthenticated && current.isAuthenticated) ||
            (previous.failure == null && current.failure != null);
      }, listener: (context, authState) async {
        if (authState.failure != null) {
          useCustomSnackbar(
              context: context,
              message: authState.failure!.message,
              type: ESnackBarType.failure);
          authBloc.add(const AuthEvent.resetFailSuccess());
        }
        if (authState.firebaseApp != null) {
          authBloc.add(const AuthEvent.checkSignedIn());
        }
        if (authState.isAuthenticated) {
          profileBloc.add(ProfileEvent.getUser(
              id: authState.user!.uid,
              email: authState.user!.email!,
              name: authState.user!.displayName!));
        }
      }, builder: (context, authState) {
        return LoginScreen(
          onPressedClose: onPressedClose,
        );
      });
    });
  }
}
