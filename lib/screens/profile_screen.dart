import 'package:flutter/material.dart';
import 'package:staugustinechsnewapp/styles.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  List<Widget> buildChildren() {
    return <Widget>[
      const SizedBox(height: Styles.mainVerticalPadding),
      const Text("Profile Screen")
    ];
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: Styles.mainOutsidePadding,
        children: buildChildren(),
      ),
    );
  }
}
