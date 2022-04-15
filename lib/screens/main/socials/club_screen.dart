import 'package:flutter/material.dart';
import 'package:staugustinechsnewapp/models/socials/club/club.dart';
import 'package:staugustinechsnewapp/screens/layout/page_layout.dart';
import 'package:staugustinechsnewapp/styles.dart';
import 'package:staugustinechsnewapp/widgets/socials/club_description.dart';

class ClubScreen extends StatefulWidget {
  final Club? club;
  final Function() onPressJoin;

  const ClubScreen({
    Key? key,
    this.club,
    required this.onPressJoin,
  }) : super(key: key);

  @override
  State<ClubScreen> createState() => _ClubScreenState();
}

class _ClubScreenState extends State<ClubScreen> {
  @override
  Widget build(BuildContext context) {
    return PageLayout(
      verticalPadding: 0,
      children: [
        Align(
            alignment: Alignment.topRight,
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.settings_rounded,
                  color: Styles.white,
                ))),
        const SizedBox(height: 85.0),
        Text(widget.club?.name ?? '', style: Styles.headerMainText),
        const SizedBox(height: 125.0),
        ClubDescription(
          description: widget.club?.description ?? '',
          onPressJoin: widget.onPressJoin,
        ),
      ],
    );
  }
}
