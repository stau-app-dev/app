import 'package:flutter/material.dart';
import 'package:staugustinechsnewapp/styles.dart';

class ProfileBio extends StatelessWidget {
  const ProfileBio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double radius = 75.0;

    return Column(
      children: [
        CircleAvatar(
            backgroundColor: Styles.secondary,
            radius: radius + 4.0,
            child: CircleAvatar(
              radius: radius,
              backgroundImage: const AssetImage('assets/images/cat.jpg'),
              backgroundColor: Styles.grey,
            )),
        const SizedBox(height: 20.0),
        const Text('John Doe', style: Styles.headerMainText),
        const SizedBox(height: 2.0),
        const Text('John.doe00@ycdsbk12.ca', style: Styles.headerSubText),
      ],
    );
  }
}
