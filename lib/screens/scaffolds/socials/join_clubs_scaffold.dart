import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:staugustinechsnewapp/screens/main/socials/join_clubs_screen.dart';
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

  void onPressedClub(String clubId) {}

  void onPressJoinClub() {
    navBloc.add(const NavEvent.changeScreen(screen: ENav.joinClubs));
  }

  @override
  Widget build(BuildContext context) {
    return JoinClubsScreen(
      clubs: const [],
      onPressClub: onPressedClub,
    );
  }
}
