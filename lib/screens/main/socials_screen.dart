import 'package:flutter/material.dart';
import 'package:staugustinechsnewapp/screens/layout/page_layout.dart';
import 'package:staugustinechsnewapp/styles.dart';

class SocialsScreen extends StatefulWidget {
  const SocialsScreen({Key? key}) : super(key: key);
  @override
  State<SocialsScreen> createState() => _SocialsScreenState();
}

class _SocialsScreenState extends State<SocialsScreen> {
  @override
  Widget build(BuildContext context) {
    return const PageLayout(
      children: [
        Text('Socials Screen'),
        SizedBox(height: Styles.mainSpacing),
        Text('Socials Screen'),
      ],
    );
  }
}
