import 'package:flutter/material.dart';
import 'package:staugustinechsnewapp/screens/layout/page_layout.dart';
import 'package:staugustinechsnewapp/theme/styles.dart';
import 'package:staugustinechsnewapp/widgets/profile/course_timetable.dart';
import 'package:staugustinechsnewapp/widgets/profile/profile_bio.dart';

class ProfileScreen extends StatelessWidget {
  final void Function() onPressedSettings;

  const ProfileScreen({Key? key, required this.onPressedSettings})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageLayout(
      verticalPadding: 0,
      children: [
        Align(
            alignment: Alignment.topRight,
            child: IconButton(
                onPressed: onPressedSettings,
                icon: const Icon(
                  Icons.settings_rounded,
                  color: Styles.white,
                ))),
        const ProfileBio(),
        const SizedBox(height: Styles.mainSpacing),
      ],
    );
  }
}
