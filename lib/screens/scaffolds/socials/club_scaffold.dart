import 'package:flutter/material.dart';
import 'package:staugustinechsnewapp/styles.dart';

class ClubScaffold extends StatefulWidget {
  const ClubScaffold({Key? key}) : super(key: key);
  @override
  State<ClubScaffold> createState() => _ClubScaffoldState();
}

class _ClubScaffoldState extends State<ClubScaffold> {
  void onPressJoin() {}

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        height:
            MediaQuery.of(context).size.height * Styles.backgroundBannerDepth,
        decoration: const BoxDecoration(
          color: Styles.primary,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(Styles.mainBorderRadiusValue),
            bottomRight: Radius.circular(Styles.mainBorderRadiusValue),
          ),
        ),
      ),
      // ClubScreen(
      //   club: ,
      //   onPressJoin: onPressJoin,
      // )
    ]);
  }
}
