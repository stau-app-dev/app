import 'package:flutter/material.dart';
import 'package:staugustinechsnewapp/styles.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  double getHeight(BuildContext context) => MediaQuery.of(context).size.height;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        height: getHeight(context) * 0.45,
        decoration: const BoxDecoration(
          color: Styles.primary,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(Styles.mainBorderRadiusValue),
            bottomRight: Radius.circular(Styles.mainBorderRadiusValue),
          ),
        ),
      ),
      SafeArea(
          child: ListView(
        padding: Styles.mainOutsidePadding,
        children: const <Widget>[
          SizedBox(height: Styles.mainVerticalPadding),
          Text('Profile Screen', style: Styles.headerMainText),
          SizedBox(height: Styles.mainSpacing),
          Text('Profile Screen'),
          SizedBox(height: Styles.mainVerticalPadding),
        ],
      )),
    ]);
  }
}
