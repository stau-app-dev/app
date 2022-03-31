import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:staugustinechsnewapp/routes/router.dart';
import 'package:staugustinechsnewapp/styles.dart';
import 'package:staugustinechsnewapp/utilities/auth/auth_bloc.dart';
import 'package:staugustinechsnewapp/utilities/navigation/nav_bloc.dart';
import 'package:staugustinechsnewapp/widgets/reusable/screen_header.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);
  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  late AuthBloc authBloc;
  late NavBloc navBloc;

  @override
  void initState() {
    authBloc = BlocProvider.of<AuthBloc>(context);
    navBloc = BlocProvider.of<NavBloc>(context);
    super.initState();
  }

  double getWidth(BuildContext context) => MediaQuery.of(context).size.width;

  void onPressedLogout() {
    authBloc.add(const AuthEvent.signOut());
    navBloc.add(const NavEvent.setNavbarVisible(isVisible: true));
    navBloc.add(NavEvent.changeScreen(screen: ENav.home, context: context));
  }

  void onPressedFAQ() {}

  Widget buildOptions() {
    return Container(
        decoration: BoxDecoration(
            color: Styles.white,
            borderRadius: Styles.mainBorderRadius,
            boxShadow: Styles.normalBoxShadow),
        padding: const EdgeInsets.all(Styles.mainInsidePadding),
        width: getWidth(context),
        child: Column(
          children: [
            TextButton(
                onPressed: onPressedLogout,
                child: const Text('Log Out', style: Styles.normalSubText)),
          ],
        ));
  }

  Widget buildFAQ() {
    return Container(
        decoration: BoxDecoration(
            color: Styles.white,
            borderRadius: Styles.mainBorderRadius,
            boxShadow: Styles.normalBoxShadow),
        padding: const EdgeInsets.all(Styles.mainInsidePadding),
        width: getWidth(context),
        child: Row(
          children: [
            const Text('FAQ', style: Styles.normalMainText),
            const Spacer(),
            IconButton(
                onPressed: onPressedFAQ,
                icon: const Icon(Icons.arrow_forward_rounded,
                    color: Styles.secondary))
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: Styles.mainOutsidePadding,
        children: <Widget>[
          const SizedBox(height: Styles.mainVerticalPadding),
          const ScreenHeader(headerText: 'Settings'),
          const SizedBox(height: Styles.mainSpacing),
          buildOptions(),
          const SizedBox(height: Styles.mainSpacing),
          buildFAQ(),
          const SizedBox(height: Styles.mainVerticalPadding),
        ],
      ),
    );
  }
}
