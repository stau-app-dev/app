import 'package:flutter/material.dart';
import 'package:staugustinechsnewapp/theme/styles.dart';
import 'package:staugustinechsnewapp/utilities/profile/consts.dart';

class ProfileBio extends StatelessWidget {
  final int pictureNumber;
  final String name;
  final String email;
  final void Function() onPressedProfilePicture;

  const ProfileBio(
      {Key? key,
      required this.pictureNumber,
      required this.name,
      required this.email,
      required this.onPressedProfilePicture})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double radius = 75.0;
    String pictureName = profilePictures[pictureNumber];

    return Column(
      children: [
        InkWell(
            onTap: onPressedProfilePicture,
            child: CircleAvatar(
                backgroundColor: Styles.secondary,
                radius: radius + 4.0,
                child: CircleAvatar(
                  radius: radius,
                  backgroundImage:
                      AssetImage('assets/profile_pics/$pictureName'),
                  backgroundColor: Styles.grey,
                ))),
        const SizedBox(height: 20.0),
        Text(
          name,
          style: Theme.of(context)
              .textTheme
              .headline5!
              .copyWith(color: Styles.white),
        ),
        const SizedBox(height: 5.0),
        Text(email,
            style: Theme.of(context)
                .textTheme
                .bodyText2!
                .copyWith(color: Styles.white)),
      ],
    );
  }
}
