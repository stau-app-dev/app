import 'package:flutter/material.dart';
import 'package:staugustinechsnewapp/styles.dart';
import 'package:staugustinechsnewapp/widgets/navigation/bottom_nav_bar.dart';
import 'package:staugustinechsnewapp/widgets/reusable/screen_header.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  double getWidth(BuildContext context) => MediaQuery.of(context).size.width;

  void onPressedFAQ() {
    print('FAQ');
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
    return Scaffold(
        body: SafeArea(
          child: ListView(
            padding: Styles.mainOutsidePadding,
            children: <Widget>[
              const SizedBox(height: Styles.mainVerticalPadding),
              const ScreenHeader(headerText: 'Settings'),
              const SizedBox(height: Styles.mainSpacing),
              buildFAQ(),
              const SizedBox(height: Styles.mainVerticalPadding),
            ],
          ),
        ),
        bottomNavigationBar:
            BottomNavBar(navigationTapped: (test) => print('Hello')));
  }
}
