import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:staugustinechsnewapp/screens/main/socials/join_clubs_screen.dart';
import 'package:staugustinechsnewapp/utilities/navigation/nav_bloc.dart';
import 'package:staugustinechsnewapp/utilities/socials/socials_bloc.dart';
import 'package:staugustinechsnewapp/widgets/reusable/custom_snackbar.dart';

class JoinClubsScaffold extends StatefulWidget {
  const JoinClubsScaffold({Key? key}) : super(key: key);
  @override
  State<JoinClubsScaffold> createState() => _JoinClubsScaffoldState();
}

class _JoinClubsScaffoldState extends State<JoinClubsScaffold> {
  late NavBloc navBloc;
  late SocialsBloc socialsBloc;

  @override
  void initState() {
    navBloc = BlocProvider.of<NavBloc>(context);
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

  void onPressJoinClub() {
    navBloc.add(const NavEvent.changeScreen(screen: ENav.joinClubs));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SocialsBloc, SocialsState>(
      builder: (context, state) {
        return JoinClubsScreen(
          clubs: state.clubQuickAccessItems ?? [],
          onPressClub: onPressedClub,
        );
      },
    );
  }
}
