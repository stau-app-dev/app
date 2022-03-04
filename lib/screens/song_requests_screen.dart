import 'package:flutter/material.dart';
import 'package:staugustinechsnewapp/styles.dart';
import 'package:staugustinechsnewapp/widgets/reusable/screen_header.dart';
import 'package:staugustinechsnewapp/widgets/song_requests/song_requests.dart';

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
          ScreenHeader(headerText: 'Song Requests'),
          SizedBox(height: Styles.mainSpacing),
          SongRequests(),
          SizedBox(height: Styles.mainVerticalPadding),
        ],
      ),
    );
  }
}
