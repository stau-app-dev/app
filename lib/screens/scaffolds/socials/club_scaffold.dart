import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:staugustinechsnewapp/screens/main/socials/club_screen.dart';
import 'package:staugustinechsnewapp/styles.dart';
import 'package:staugustinechsnewapp/utilities/socials/socials_bloc.dart';

class ClubScaffold extends StatefulWidget {
  const ClubScaffold({Key? key}) : super(key: key);
  @override
  State<ClubScaffold> createState() => _ClubScaffoldState();
}

class _ClubScaffoldState extends State<ClubScaffold> {
  void onPressJoin() {}

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SocialsBloc, SocialsState>(builder: (context, state) {
      return Stack(children: [
        if (state.club?.pictureUrl != null)
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: CachedNetworkImageProvider(state.club!.pictureUrl),
                fit: BoxFit.cover,
              ),
              color: Styles.secondary,
              borderRadius: Styles.mainBorderRadius,
            ),
          ),
        Container(
            decoration: BoxDecoration(
                borderRadius: Styles.mainBorderRadius,
                color: Colors.white,
                gradient: LinearGradient(
                    begin: FractionalOffset.topCenter,
                    end: FractionalOffset.bottomCenter,
                    colors: [
                      Styles.transparent,
                      Styles.grey.withOpacity(0.1),
                      Styles.grey.withOpacity(0.5),
                    ],
                    stops: const [
                      0.3,
                      0.5,
                      1.0
                    ]))),
        ClubScreen(
          club: state.club,
          onPressJoin: onPressJoin,
        )
      ]);
    });
  }
}
