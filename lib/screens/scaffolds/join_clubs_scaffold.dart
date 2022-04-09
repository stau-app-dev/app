import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:staugustinechsnewapp/models/socials/club/club.dart';
import 'package:staugustinechsnewapp/screens/main/join_clubs_screen.dart';
import 'package:staugustinechsnewapp/utilities/navigation/nav_bloc.dart';

class JoinClubsScaffold extends StatefulWidget {
  const JoinClubsScaffold({Key? key}) : super(key: key);
  @override
  State<JoinClubsScaffold> createState() => _JoinClubsScaffoldState();
}

class _JoinClubsScaffoldState extends State<JoinClubsScaffold> {
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
      name: 'Engineering Club',
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
      name: 'Science Club',
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
      name: 'Wow Club',
      pending: [
        'pending@ycdsbk12.ca',
        'pending2@ycdsbk12.ca',
      ],
      pictureUrl:
          'https://c.tenor.com/vUiP93AK6wQAAAAC/hollow-knight-primal-aspid.gif',
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
      name: 'Best Buddies Club',
      pending: [
        'pending@ycdsbk12.ca',
        'pending2@ycdsbk12.ca',
      ],
      pictureUrl:
          'https://s.yimg.com/uu/api/res/1.2/BhsE8N4Y7U7o8h9gnp8IaA--~B/aD05MDA7dz0xNjAwO2FwcGlkPXl0YWNoeW9u/https://o.aolcdn.com/images/dims?crop=1280%2C720%2C0%2C0&quality=85&format=jpg&resize=1600%2C900&image_uri=https://s.yimg.com/os/creatr-uploaded-images/2019-09/f5bb6880-d0c7-11e9-9d7f-8cca8390b2a6&client=a1acac3e1b3290917d92&signature=bc7f19652615e0174015ca8a944c2f07e8bf0da9',
    ),
  ];

  void onPressedClub(String clubId) {}

  void onPressJoinClub() {
    navBloc.add(const NavEvent.changeScreen(screen: ENav.joinClubs));
  }

  @override
  Widget build(BuildContext context) {
    return JoinClubsScreen(
      clubs: sampleClubs,
      onPressClub: onPressedClub,
    );
  }
}
