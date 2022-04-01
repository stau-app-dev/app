import 'package:flutter/material.dart';
import 'package:staugustinechsnewapp/styles.dart';

class SocialsScreen extends StatefulWidget {
  const SocialsScreen({Key? key}) : super(key: key);
  @override
  State<SocialsScreen> createState() => _SocialsScreenState();
}

class _SocialsScreenState extends State<SocialsScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: Styles.mainOutsidePadding,
      children: const <Widget>[
        SizedBox(height: Styles.mainVerticalPadding),
        Text('Socials Screen'),
        SizedBox(height: Styles.mainSpacing),
        Text('Socials Screen'),
        SizedBox(height: Styles.mainVerticalPadding),
      ],
    );
  }
}
