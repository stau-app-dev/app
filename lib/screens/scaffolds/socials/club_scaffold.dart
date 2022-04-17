import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:staugustinechsnewapp/screens/main/socials/club_members_screen.dart';
import 'package:staugustinechsnewapp/screens/main/socials/club_screen.dart';
import 'package:staugustinechsnewapp/theme/styles.dart';
import 'package:staugustinechsnewapp/utilities/profile/profile_bloc.dart';
import 'package:staugustinechsnewapp/utilities/socials/consts.dart';
import 'package:staugustinechsnewapp/utilities/socials/socials_bloc.dart';
import 'package:staugustinechsnewapp/widgets/reusable/custom_snackbar.dart';
import 'package:staugustinechsnewapp/widgets/reusable/popup_card.dart';
import 'package:staugustinechsnewapp/widgets/reusable/show_confirmation_dialog.dart';
import 'package:staugustinechsnewapp/widgets/socials/add_announcement_form.dart';
import 'package:staugustinechsnewapp/widgets/socials/club_settings.dart';

class ClubScaffold extends StatefulWidget {
  const ClubScaffold({Key? key}) : super(key: key);
  @override
  State<ClubScaffold> createState() => _ClubScaffoldState();
}

class _ClubScaffoldState extends State<ClubScaffold> {
  late final SocialsBloc socialsBloc;
  late final ProfileBloc profileBloc;

  bool showMembersScreen = false;
  EJoinButtonState joinButtonText = EJoinButtonState.join;

  @override
  void initState() {
    socialsBloc = BlocProvider.of<SocialsBloc>(context);
    profileBloc = BlocProvider.of<ProfileBloc>(context);
    super.initState();
  }

  void onRefresh() {
    socialsBloc.add(SocialsEvent.getClub(
        clubId: socialsBloc.state.club!.id,
        pictureUrl: socialsBloc.state.club!.pictureUrl));
  }

  void onPressJoin() {
    String clubId = socialsBloc.state.club!.id;
    String userEmail = profileBloc.state.user!.email;
    int joinPreference = socialsBloc.state.club!.joinPreference;

    if (joinPreference == 0) {
      useCustomSnackbar(
          context: context,
          message: 'Club is not open to join',
          type: ESnackBarType.failure);
    } else if (joinPreference == 1) {
      socialsBloc.add(SocialsEvent.addUserToPendingClub(
          clubId: clubId, userEmail: userEmail));
      setState(() {
        joinButtonText = EJoinButtonState.pending;
      });
    } else if (joinPreference == 2) {
      onPressAddUser(userEmail);
      onRefresh();
    }
  }

  void onPressAddUser(String userEmail) {
    socialsBloc.add(SocialsEvent.addUserToClub(
      clubId: socialsBloc.state.club!.id,
      userEmail: userEmail,
    ));
  }

  void onPressRemoveUser(String userEmail) {
    socialsBloc.add(SocialsEvent.removeUserFromClub(
      clubId: socialsBloc.state.club!.id,
      userEmail: userEmail,
    ));
  }

  void onPressAddAnnouncement() {
    usePopupCard(
        context: context,
        title: 'Add Announcement',
        child: AddAnnouncementForm(onPressedSubmit: onSubmitAddAnnouncement));
  }

  void onSubmitAddAnnouncement(String content) {
    socialsBloc.add(SocialsEvent.addClubAnnouncement(
      clubId: socialsBloc.state.club!.id,
      content: content,
      clubName: socialsBloc.state.club!.name,
      creatorName: profileBloc.state.user!.name,
    ));
    Navigator.pop(context);
  }

  void onPressedSettings(bool isAdmin) {
    usePopupCard(
        context: context,
        title: 'Club Settings',
        child: ClubSettings(
          isAdmin: isAdmin,
          onPressMembersList: () {
            setState(() {
              showMembersScreen = true;
            });
            Navigator.pop(context);
          },
          onPressLeaveClub: () {
            showConfirmationDialog(
                context: context,
                content: 'Are you sure you want to leave this club?',
                onPressConfirm: () {
                  onPressRemoveUser(profileBloc.state.user!.email);
                  // Need to double pop to remove:
                  // 1. The confirmation dialog
                  // 2. The popup card
                  Navigator.pop(context);
                  Navigator.pop(context);
                });
          },
        ));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
        builder: (context, profileState) {
      return BlocConsumer<SocialsBloc, SocialsState>(
          listenWhen: (previous, current) {
        return (previous.club != current.club) ||
            (previous.success != current.success);
      }, listener: (context, state) {
        // NOTE: The socials scaffold is active since it's a stack.
        // That means that it will still listen for success and failure events
        // from the socials bloc and show the appropriate snackbar.
        // Therefore, we don't need to do anything here.
        // It's not great and should probably be refactored.
        // But that's a later issue.

        // Refresh for any success events
        if (state.success != null && state.club != null) {
          onRefresh();
        }
        if (state.club != null) {
          String clubId = state.club!.id;
          String userEmail = profileState.user!.email;
          int joinPreference = state.club!.joinPreference;

          // Join button logic
          if (joinPreference == 0) {
            setState(() {
              joinButtonText = EJoinButtonState.notOpen;
            });
          } else if (state.club!.pending.contains(userEmail)) {
            setState(() {
              joinButtonText = EJoinButtonState.pending;
            });
          } else {
            setState(() {
              joinButtonText = EJoinButtonState.join;
            });
          }

          // Only get announcements if user is a member
          if (state.club!.members.contains(userEmail) ||
              state.club!.admins.contains(userEmail)) {
            socialsBloc.add(SocialsEvent.getClubAnnouncements(clubId: clubId));
          }

          // Also reset back to main screen
          setState(() {
            showMembersScreen = false;
          });
        }
      }, builder: (context, socialsState) {
        bool isClubAdmin =
            socialsState.club?.admins.contains(profileState.user?.email) ??
                false;

        return Stack(children: [
          if (socialsState.club?.pictureUrl != null)
            Container(
              height: MediaQuery.of(context).size.height * 0.5,
              decoration: BoxDecoration(
                image: socialsState.club?.pictureUrl != null
                    ? DecorationImage(
                        image: CachedNetworkImageProvider(
                            socialsState.club!.pictureUrl),
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
            height: MediaQuery.of(context).size.height * 0.5,
            decoration: BoxDecoration(
              borderRadius: Styles.mainBorderRadius,
              color: Styles.primary.withOpacity(0.5),
            ),
          ),
          showMembersScreen
              ? ClubMembersScreen(
                  onPressBack: () {
                    setState(() {
                      showMembersScreen = false;
                    });
                  },
                  clubName: socialsState.club?.name ?? '',
                  admins: socialsState.club?.admins ?? [],
                  members: socialsState.club?.members ?? [],
                  pending: isClubAdmin ? socialsState.club?.pending : null,
                  onPressAddUser: onPressAddUser,
                  onPressRemoveUser: onPressRemoveUser,
                )
              : ClubScreen(
                  club: socialsState.club,
                  clubAnnouncements: socialsState.clubAnnouncements,
                  onRefresh: onRefresh,
                  onPressJoin: onPressJoin,
                  onPressAddAnnouncement:
                      isClubAdmin ? onPressAddAnnouncement : null,
                  onPressedSettings: () => onPressedSettings(isClubAdmin),
                )
        ]);
      });
    });
  }
}
