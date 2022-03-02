import 'package:flutter/material.dart';
import 'package:staugustinechsnewapp/styles.dart';

class SocialsScreen extends StatefulWidget {
  const SocialsScreen({Key? key}) : super(key: key);
  @override
  State<SocialsScreen> createState() => _SocialsScreenState();
}

class _SocialsScreenState extends State<SocialsScreen> {
  List<Widget> buildChildren() {
    return <Widget>[
      const SizedBox(height: Styles.mainVerticalPadding),
      const Text("Socials Screen")
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
