import 'package:flutter/material.dart';

class SocialsScreen extends StatefulWidget {
  const SocialsScreen({Key? key}) : super(key: key);
  @override
  State<SocialsScreen> createState() => _SocialsScreenState();
}

class _SocialsScreenState extends State<SocialsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text(
              'Socials Screen',
            ),
          ],
        ),
      ), // bottomNavigationBar: BottomNavBar(),
    ));
  }
}
