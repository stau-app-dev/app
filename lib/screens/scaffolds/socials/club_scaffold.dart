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
  double getHeight(BuildContext context) => MediaQuery.of(context).size.height;

  void onPressJoin() {}

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SocialsBloc, SocialsState>(builder: (context, state) {
      return Stack(children: [
        if (state.club?.pictureUrl != null)
          Container(
            height: getHeight(context) * 0.5,
            decoration: BoxDecoration(
              image: state.club?.pictureUrl != null
                  ? DecorationImage(
                      image: CachedNetworkImageProvider(state.club!.pictureUrl),
                      fit: BoxFit.cover,
                    )
                  : null,
              boxShadow: const [
                BoxShadow(
                  color: Styles.primary,
                  spreadRadius: 0,
                  blurRadius: 5,
                  offset: Offset(0, 0),
                )
              ],
              borderRadius: Styles.mainBorderRadius,
            ),
          ),
        Container(
          height: getHeight(context) * 0.5,
          decoration: BoxDecoration(
            borderRadius: Styles.mainBorderRadius,
            color: Styles.primary.withOpacity(0.5),
          ),
        ),
        ClubScreen(
          club: state.club,
          onPressJoin: onPressJoin,
        )
      ]);
    });
  }
}
