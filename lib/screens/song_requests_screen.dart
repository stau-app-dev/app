import 'package:flutter/material.dart';
import 'package:staugustinechsnewapp/styles.dart';

class SongRequestsScreen extends StatefulWidget {
  const SongRequestsScreen({Key? key}) : super(key: key);
  @override
  State<SongRequestsScreen> createState() => _SongRequestsScreenState();
}

class _SongRequestsScreenState extends State<SongRequestsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: Styles.mainOutsidePadding,
        children: const <Widget>[
          SizedBox(height: Styles.mainVerticalPadding),
          Text("Songs Screen"),
          SizedBox(height: Styles.mainSpacing),
          Text("Songs Screen"),
          SizedBox(height: Styles.mainVerticalPadding),
        ],
      ),
    );
  }
}
