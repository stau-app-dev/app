import 'package:flutter/material.dart';
import 'package:staugustinechsnewapp/models/socials/club_quick_access_item/club_quick_access_item.dart';
import 'package:staugustinechsnewapp/screens/layout/page_layout.dart';
import 'package:staugustinechsnewapp/styles.dart';
import 'package:staugustinechsnewapp/widgets/reusable/screen_header.dart';
import 'package:staugustinechsnewapp/widgets/reusable/text_arrow_container.dart';
import 'package:staugustinechsnewapp/widgets/socials/clubs_list.dart';

class SocialsScreen extends StatefulWidget {
  final List<ClubQuickAccessItem> clubs;
  final Function(String) onPressClub;
  final Function() onPressJoinClubsButton;
  final bool isAdmin;
  final Function() onPressCreateClub;

  const SocialsScreen({
    Key? key,
    required this.clubs,
    required this.onPressClub,
    required this.onPressJoinClubsButton,
    required this.isAdmin,
    required this.onPressCreateClub,
  }) : super(key: key);

  @override
  State<SocialsScreen> createState() => _SocialsScreenState();
}

class _SocialsScreenState extends State<SocialsScreen> {
  @override
  Widget build(BuildContext context) {
    return PageLayout(
      listView: true,
      children: [
        const ScreenHeader(headerText: 'Socials'),
        const SizedBox(height: Styles.mainSpacing),
        ClubsList(
          title: 'My Clubs',
          items: widget.clubs,
          onPressClub: widget.onPressClub,
          showJoinClubsButton: true,
          onPressJoinClubsButton: widget.onPressJoinClubsButton,
        ),
        if (widget.isAdmin) ...[
          const SizedBox(height: Styles.mainSpacing),
          TextArrowContainer(
              text: 'Create a Club', onPressed: widget.onPressCreateClub),
        ]
      ],
    );
  }
}
