import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:staugustinechsnewapp/models/socials/club/club.dart';
import 'package:staugustinechsnewapp/screens/main/socials/club_screen.dart';
import 'package:staugustinechsnewapp/screens/main/socials/socials_screen.dart';
import 'package:staugustinechsnewapp/styles.dart';
import 'package:staugustinechsnewapp/utilities/navigation/nav_bloc.dart';

class ClubScaffold extends StatefulWidget {
  const ClubScaffold({Key? key}) : super(key: key);
  @override
  State<ClubScaffold> createState() => _ClubScaffoldState();
}

class _ClubScaffoldState extends State<ClubScaffold> {
  void onPressJoin() {}

  @override
  Widget build(BuildContext context) {
    const club = Club(
      id: '1',
      admins: ['admin@ycdsbk12.ca', 'admin2@ycdsbk12.ca'],
      description:
          'Spectrum is a club that focuses on the development of the student body. We are a group of students who are passionate about technology and want to help others learn about it.',
      members: [
        'member@ycdsbk12.ca',
        'member2@ycdsbk12.ca',
        'member3@ycdsbk12.ca',
      ],
      name: 'Spectrum',
      pending: [
        'pending@ycdsbk12.ca',
        'pending2@ycdsbk12.ca',
      ],
      pictureUrl:
          'https://c.tenor.com/vUiP93AK6wQAAAAC/hollow-knight-primal-aspid.gif',
    );

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
      ClubScreen(
        club: club,
        onPressJoin: onPressJoin,
      )
    ]);
  }
}
