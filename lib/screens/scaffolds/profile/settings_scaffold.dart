import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:staugustinechsnewapp/providers/network.dart';
import 'package:staugustinechsnewapp/screens/main/profile/settings_screen.dart';
import 'package:staugustinechsnewapp/utilities/auth/auth_bloc.dart';
import 'package:staugustinechsnewapp/utilities/navigation/nav_bloc.dart';
import 'package:staugustinechsnewapp/utilities/profile/consts.dart';
import 'package:staugustinechsnewapp/utilities/profile/profile_bloc.dart';

class SettingsScaffold extends StatefulWidget {
  const SettingsScaffold({Key? key}) : super(key: key);
  @override
  State<SettingsScaffold> createState() => _SettingsScaffoldState();
}

class _SettingsScaffoldState extends State<SettingsScaffold> {
  late AuthBloc authBloc;
  late NavBloc navBloc;
  late ProfileBloc profileBloc;

  @override
  void initState() {
    authBloc = BlocProvider.of<AuthBloc>(context);
    navBloc = BlocProvider.of<NavBloc>(context);
    profileBloc = BlocProvider.of<ProfileBloc>(context);
    super.initState();
  }

  void onToggleGeneralNotifications(bool value) {
    List<String> notifications = profileBloc.state.user!.notifications;
    if (value) {
      notifications.add(generalNotification);
    } else {
      notifications.remove(generalNotification);
    }
    profileBloc.add(ProfileEvent.updateUserField(
        field: 'notifications', value: notifications));
  }

  void onPressedSendFeedback() {
    final Uri params = Uri(
      scheme: 'mailto',
      path: sendFeedbackEmail,
      query: 'subject=App Feedback',
    );
    launchURL(context: context, url: params.toString());
  }

  void onPressedLogout() {
    authBloc.add(const AuthEvent.signOut());
    navBloc.add(const NavEvent.setNavbarVisible(isVisible: true));
    navBloc.add(const NavEvent.changeScreen(screen: ENav.home));
  }

  void onPressedFAQ() {
    launchURL(context: context, url: staFAQPageUrl);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(builder: (context, state) {
      return SettingsScreen(
        enableGeneralNotifications:
            state.user?.notifications.contains(generalNotification) ?? false,
        onToggleGeneralNotifications: onToggleGeneralNotifications,
        onPressedSendFeedback: onPressedSendFeedback,
        onPressedLogout: onPressedLogout,
        onPressedFAQ: onPressedFAQ,
      );
    });
  }
}
