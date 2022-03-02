import 'package:flutter/material.dart';
import 'package:staugustinechsnewapp/styles.dart';

class SongRequestsScreen extends StatefulWidget {
  const SongRequestsScreen({Key? key}) : super(key: key);
  @override
  State<SongRequestsScreen> createState() => _SongRequestsScreenState();
}

class _SongRequestsScreenState extends State<SongRequestsScreen> {
  List<Widget> buildChildren() {
    return <Widget>[
      const SizedBox(height: Styles.mainVerticalPadding),
      const Text("Songs Screen")
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
