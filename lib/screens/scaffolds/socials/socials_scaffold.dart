import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:staugustinechsnewapp/screens/main/socials/socials_screen.dart';
import 'package:staugustinechsnewapp/utilities/general/general_utils.dart';
import 'package:staugustinechsnewapp/utilities/socials/socials_bloc.dart';
import 'package:staugustinechsnewapp/widgets/reusable/custom_snackbar.dart';
import 'package:staugustinechsnewapp/widgets/socials/add_club_form.dart';
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
  late SocialsBloc socialsBloc;

  @override
  void initState() {
    navBloc = BlocProvider.of<NavBloc>(context);
    profileBloc = BlocProvider.of<ProfileBloc>(context);
    socialsBloc = BlocProvider.of<SocialsBloc>(context);
    super.initState();
  }

  void onPressedClub(String clubId) {
    // Get the picture url of the club
    int index = socialsBloc.state.clubQuickAccessItems!
        .indexWhere((element) => element.id == clubId);
    if (index != -1) {
      socialsBloc.add(SocialsEvent.getClub(
          clubId: clubId,
          pictureUrl:
              socialsBloc.state.clubQuickAccessItems![index].pictureUrl));
      navBloc.add(const NavEvent.changeScreen(screen: ENav.club));
    } else {
      useCustomSnackbar(
          context: context,
          message: 'Club details not found',
          type: ESnackBarType.failure);
    }
  }

  void onPressJoinClubsButton() {
    socialsBloc.add(
        SocialsEvent.getUserClubsNotJoined(userId: profileBloc.state.user!.id));
    navBloc.add(const NavEvent.changeScreen(screen: ENav.joinClubs));
  }

  void onPressedCreateClub() {
    usePopupCard(
        context: context,
        title: 'Create Club',
        listView: true,
        child: AddClubForm(
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
    socialsBloc.add(SocialsEvent.addClub(
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
    return BlocConsumer<NavBloc, NavState>(
        listenWhen: (previous, current) =>
            previous.currentScreen == ENav.joinClubs &&
            current.currentScreen == ENav.socials,
        listener: (context, state) {
          // Need to refresh the clubs list, not really efficient and pretty confusing but it works
          // and im too lazy to find a better way and the deadline is soon lmao
          if (state.currentScreen == ENav.socials) {
            socialsBloc.add(
                SocialsEvent.getUserClubs(userId: profileBloc.state.user!.id));
          }
        },
        builder: (context, navState) {
          return BlocConsumer<ProfileBloc, ProfileState>(
              listenWhen: (previous, current) => previous.user != current.user,
              listener: (context, state) {
                if (state.user?.id != null) {
                  socialsBloc
                      .add(SocialsEvent.getUserClubs(userId: state.user!.id));
                }
              },
              builder: (context, profileState) {
                return BlocConsumer<SocialsBloc, SocialsState>(
                    listener: (context, state) {
                  // Use case for when:
                  // 1. User leaves a club
                  // 2. User joins a club
                  // 3. User creates a club
                  // Need to refresh user
                  if (state.club == null && state.success != null) {
                    profileBloc.add(const ProfileEvent.refreshUser());
                  }
                  if (state.success != null) {
                    useCustomSnackbar(
                        context: context,
                        message: state.success?.message ?? 'Success!',
                        type: ESnackBarType.success);
                    socialsBloc.add(const SocialsEvent.resetFailSuccess());
                  }
                  if (state.failure != null) {
                    useCustomSnackbar(
                        context: context,
                        message: state.failure?.message ?? 'Failure!',
                        type: ESnackBarType.failure);
                    socialsBloc.add(const SocialsEvent.resetFailSuccess());
                  }
                }, builder: (context, state) {
                  bool isAdmin = profileState.user != null
                      ? profileState.user!.status > 0
                      : false;

                  return SocialsScreen(
                    clubs: state.clubQuickAccessItems ?? [],
                    onPressClub: onPressedClub,
                    onPressJoinClubsButton: onPressJoinClubsButton,
                    isAdmin: isAdmin,
                    onPressCreateClub: onPressedCreateClub,
                  );
                });
              });
        });
  }
}
