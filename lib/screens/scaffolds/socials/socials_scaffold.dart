import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:staugustinechsnewapp/models/socials/club/club.dart';
import 'package:staugustinechsnewapp/screens/main/socials/socials_screen.dart';
import 'package:staugustinechsnewapp/screens/scaffolds/socials/club_settings.dart';
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

  @override
  void initState() {
    navBloc = BlocProvider.of<NavBloc>(context);
    super.initState();
  }

  List<Club> sampleClubs = [
    const Club(
      id: '1',
      admins: ['admin@ycdsbk12.ca', 'admin2@ycdsbk12.ca'],
      description:
          'Club description that is really long and will wrap around to the next line probably',
      members: [
        'member@ycdsbk12.ca',
        'member2@ycdsbk12.ca',
        'member3@ycdsbk12.ca',
      ],
      name:
          'Club name that is really long and will wrap around to the next line probably',
      pending: [
        'pending@ycdsbk12.ca',
        'pending2@ycdsbk12.ca',
      ],
      pictureUrl:
          'https://static.boredpanda.com/blog/wp-content/uploads/2019/04/funny-dancing-cats-fb3-png__700.jpg',
    ),
    const Club(
      id: '1',
      admins: ['admin@ycdsbk12.ca', 'admin2@ycdsbk12.ca'],
      description: 'App Development Club',
      members: [
        'member@ycdsbk12.ca',
        'member2@ycdsbk12.ca',
        'member3@ycdsbk12.ca',
      ],
      name: 'Club name',
      pending: [
        'pending@ycdsbk12.ca',
        'pending2@ycdsbk12.ca',
      ],
      pictureUrl:
          'https://cdn.vox-cdn.com/thumbor/MZRJnpwAMIHQ5-XT4FwNv0rivw4=/1400x1400/filters:format(jpeg)/cdn.vox-cdn.com/uploads/chorus_asset/file/19397812/1048232144.jpg.jpg',
    ),
    const Club(
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
    ),
  ];

  void onPressedClub(String clubId) {
    navBloc.add(const NavEvent.changeScreen(screen: ENav.club));
  }

  void onPressJoinClubsButton() {
    navBloc.add(const NavEvent.changeScreen(screen: ENav.joinClubs));
  }

  void onPressedCreateClub() {
    usePopupCard(
        context: context, title: 'Create Club', child: const ClubSettings());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
        builder: (context, profileState) {
      bool isAdmin =
          profileState.user != null ? profileState.user!.status > 0 : false;

      return SocialsScreen(
        clubs: sampleClubs,
        onPressClub: onPressedClub,
        onPressJoinClubsButton: onPressJoinClubsButton,
        isAdmin: isAdmin,
        onPressCreateClub: onPressedCreateClub,
      );
    });
  }
}
