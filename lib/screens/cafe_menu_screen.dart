import 'package:flutter/material.dart';
import 'package:staugustinechsnewapp/styles.dart';

class CafeMenuScreen extends StatefulWidget {
  const CafeMenuScreen({Key? key}) : super(key: key);
  @override
  State<CafeMenuScreen> createState() => _CafeMenuScreenState();
}

class _CafeMenuScreenState extends State<CafeMenuScreen> {
  List<Widget> buildChildren() {
    return <Widget>[
      const SizedBox(height: Styles.mainVerticalPadding),
      const Text("Cafe Screen")
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
