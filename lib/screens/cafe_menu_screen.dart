import 'package:flutter/material.dart';

class CafeMenuScreen extends StatefulWidget {
  const CafeMenuScreen({Key? key}) : super(key: key);
  @override
  State<CafeMenuScreen> createState() => _CafeMenuScreenState();
}

class _CafeMenuScreenState extends State<CafeMenuScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text(
              'Cafe Screen',
            ),
          ],
        ),
      ), // bottomNavigationBar: BottomNavBar(),
    ));
  }
}
