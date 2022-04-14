import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:staugustinechsnewapp/models/socials/club/club.dart';
import 'package:staugustinechsnewapp/screens/main/socials/socials_screen.dart';
import 'package:staugustinechsnewapp/utilities/general/general_utils.dart';
import 'package:staugustinechsnewapp/widgets/reusable/custom_snackbar.dart';
import 'package:staugustinechsnewapp/widgets/socials/club_settings.dart';
import 'package:staugustinechsnewapp/utilities/navigation/nav_bloc.dart';
import 'package:staugustinechsnewapp/utilities/profile/profile_bloc.dart';
import 'package:staugustinechsnewapp/widgets/reusable/popup_card.dart';

class SocialsScaffold extends StatefulWidget {
  const SocialsScaffold({Key? key}) : super(key: key);
  @override
  State<SocialsScaffold> createState() => _SocialsScaffoldState();
}

class _SocialsScaffoldState extends State<SocialsScaffold> {
  late NavBloc navBloc;
  late ProfileBloc profileBloc;

  @override
  void initState() {
    navBloc = BlocProvider.of<NavBloc>(context);
    profileBloc = BlocProvider.of<ProfileBloc>(context);
    super.initState();
  }

  void onPressedClub(String clubId) {
    navBloc.add(const NavEvent.changeScreen(screen: ENav.club));
  }

  void onPressJoinClubsButton() {
    navBloc.add(const NavEvent.changeScreen(screen: ENav.joinClubs));
  }

  void onPressedCreateClub() {
    usePopupCard(
        context: context,
        title: 'Create Club',
        listView: true,
        child: ClubSettings(
          onPressedSubmit: onSubmitCreateClub,
        ));
  }

  void onSubmitCreateClub({
    required String name,
    required String description,
    required File picture,
    required int joinPreference,
  }) {
    String pictureId = GeneralUtils.generateRandomString(length: 10);
    profileBloc.add(ProfileEvent.addClub(
      name: name.trim(),
      description: description.trim(),
      pictureId: pictureId,
      email: profileBloc.state.user!.email,
      joinPreference: joinPreference,
      picture: picture,
      path: 'newClubBanners',
      fileName: pictureId,
    ));
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProfileBloc, ProfileState>(listener: (context, state) {
      if (state.success != null) {
        useCustomSnackbar(
            context: context,
            message: state.success?.message ?? 'Success!',
            type: ESnackBarType.success);
        profileBloc.add(const ProfileEvent.resetFailSuccess());
      }
      if (state.failure != null) {
        useCustomSnackbar(
            context: context,
            message: state.failure?.message ?? 'Failure!',
            type: ESnackBarType.failure);
        profileBloc.add(const ProfileEvent.resetFailSuccess());
      }
    }, builder: (context, profileState) {
      bool isAdmin =
          profileState.user != null ? profileState.user!.status > 0 : false;

      return SocialsScreen(
        clubs: [],
        onPressClub: onPressedClub,
        onPressJoinClubsButton: onPressJoinClubsButton,
        isAdmin: isAdmin,
        onPressCreateClub: onPressedCreateClub,
      );
    });
  }
}
