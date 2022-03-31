import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:staugustinechsnewapp/routes/router.dart';
import 'package:staugustinechsnewapp/styles.dart';
import 'package:staugustinechsnewapp/utilities/navigation/nav_bloc.dart';
import 'package:staugustinechsnewapp/widgets/profile/course_timetable.dart';
import 'package:staugustinechsnewapp/widgets/profile/profile_bio.dart';
import 'package:staugustinechsnewapp/widgets/reusable/badges_list.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  late NavBloc navBloc;
  double getHeight(BuildContext context) => MediaQuery.of(context).size.height;

  @override
  void initState() {
    navBloc = BlocProvider.of<NavBloc>(context);
    super.initState();
  }

  void onPressedSettings() {
    navBloc.add(NavEvent.changeScreen(screen: ENav.settings, context: context));
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> sampleBadges = [
      {'name': 'Beta Tester', 'image': 'assets/images/cat.jpg'},
      {'name': 'Devops', 'image': 'assets/images/cat.jpg'},
      {'name': 'Wild Card', 'image': 'assets/images/cat.jpg'},
      {'name': 'Enigma', 'image': 'assets/images/cat.jpg'},
      {'name': 'React Developer', 'image': 'assets/images/cat.jpg'},
    ];

    return Stack(children: [
      Container(
        height: getHeight(context) * Styles.backgroundBannerDepth,
        decoration: const BoxDecoration(
          color: Styles.primary,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(Styles.mainBorderRadiusValue),
            bottomRight: Radius.circular(Styles.mainBorderRadiusValue),
          ),
        ),
      ),
      SafeArea(
          child: ListView(
        padding: Styles.mainOutsidePadding,
        children: <Widget>[
          const SizedBox(height: Styles.mainVerticalPadding),
          Align(
              alignment: Alignment.topRight,
              child: IconButton(
                  onPressed: onPressedSettings,
                  icon: const Icon(
                    Icons.settings_rounded,
                    color: Styles.white,
                  ))),
          const ProfileBio(),
          const SizedBox(height: 25.0),
          const CourseTimetable(),
          const SizedBox(height: Styles.mainSpacing),
          BadgesList(title: 'My Badges', badges: sampleBadges),
          const SizedBox(height: Styles.mainVerticalPadding),
        ],
      )),
    ]);
  }
}
