import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:staugustinechsnewapp/screens/main/socials/club_screen.dart';
import 'package:staugustinechsnewapp/styles.dart';
import 'package:staugustinechsnewapp/utilities/profile/profile_bloc.dart';
import 'package:staugustinechsnewapp/utilities/socials/socials_bloc.dart';
import 'package:staugustinechsnewapp/widgets/reusable/popup_card.dart';
import 'package:staugustinechsnewapp/widgets/socials/add_announcement_form.dart';

class ClubScaffold extends StatefulWidget {
  const ClubScaffold({Key? key}) : super(key: key);
  @override
  State<ClubScaffold> createState() => _ClubScaffoldState();
}

class _ClubScaffoldState extends State<ClubScaffold> {
  late final SocialsBloc socialsBloc;
  late final ProfileBloc profileBloc;

  double getHeight(BuildContext context) => MediaQuery.of(context).size.height;

  @override
  void initState() {
    socialsBloc = BlocProvider.of<SocialsBloc>(context);
    profileBloc = BlocProvider.of<ProfileBloc>(context);
    super.initState();
  }

  void onPressJoin() {}

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

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
        builder: (context, profileState) {
      return BlocBuilder<SocialsBloc, SocialsState>(
          builder: (context, socialsState) {
        bool isClubAdmin =
            socialsState.club?.admins.contains(profileState.user?.email) ??
                false;

        return Stack(children: [
          if (socialsState.club?.pictureUrl != null)
            Container(
              height: getHeight(context) * 0.5,
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
            height: getHeight(context) * 0.5,
            decoration: BoxDecoration(
              borderRadius: Styles.mainBorderRadius,
              color: Styles.primary.withOpacity(0.5),
            ),
          ),
          ClubScreen(
            club: socialsState.club,
            clubAnnouncements: [],
            onPressJoin: onPressJoin,
            onPressAddAnnouncement: isClubAdmin ? onPressAddAnnouncement : null,
          )
        ]);
      });
    });
  }
}
