import 'package:flutter/material.dart';
import 'package:staugustinechsnewapp/screens/layout/page_layout.dart';
import 'package:staugustinechsnewapp/theme/styles.dart';
import 'package:staugustinechsnewapp/widgets/profile/profile_bio.dart';

class ProfileScreen extends StatelessWidget {
  final int pictureNumber;
  final String name;
  final String email;
  final void Function() onPressedSettings;
  final void Function() onPressedProfilePicture;

  const ProfileScreen(
      {Key? key,
      required this.pictureNumber,
      required this.name,
      required this.email,
      required this.onPressedSettings,
      required this.onPressedProfilePicture})
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
        ProfileBio(
          pictureNumber: pictureNumber,
          name: name,
          email: email,
          onPressedProfilePicture: onPressedProfilePicture,
        ),
        const SizedBox(height: Styles.mainSpacing),
      ],
    );
  }
}
