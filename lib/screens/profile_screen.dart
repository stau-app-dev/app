import 'package:flutter/material.dart';
import 'package:staugustinechsnewapp/styles.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: Styles.mainOutsidePadding,
        children: const <Widget>[
          SizedBox(height: Styles.mainVerticalPadding),
          Text("Profile Screen"),
          SizedBox(height: Styles.mainSpacing),
          Text("Profile Screen"),
          SizedBox(height: Styles.mainVerticalPadding),
        ],
      ),
    );
  }
}
