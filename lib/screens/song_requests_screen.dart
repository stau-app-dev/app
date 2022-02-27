import 'package:flutter/material.dart';

class SongRequestsScreen extends StatefulWidget {
  const SongRequestsScreen({Key? key}) : super(key: key);
  @override
  State<SongRequestsScreen> createState() => _SongRequestsScreenState();
}

class _SongRequestsScreenState extends State<SongRequestsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text(
              'Song Requests Screen',
            ),
          ],
        ),
      ), // bottomNavigationBar: BottomNavBar(),
    ));
  }
}
