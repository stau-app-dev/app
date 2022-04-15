import 'package:flutter/material.dart';
import 'package:staugustinechsnewapp/models/socials/club_quick_access_item/club_quick_access_item.dart';
import 'package:staugustinechsnewapp/screens/layout/page_layout.dart';
import 'package:staugustinechsnewapp/styles.dart';
import 'package:staugustinechsnewapp/widgets/reusable/screen_header.dart';
import 'package:staugustinechsnewapp/widgets/socials/clubs_list.dart';

class JoinClubsScreen extends StatefulWidget {
  final List<ClubQuickAccessItem> clubs;
  final Function(String) onPressClub;

  const JoinClubsScreen(
      {Key? key, required this.clubs, required this.onPressClub})
      : super(key: key);

  @override
  State<JoinClubsScreen> createState() => _JoinClubsScreenState();
}

class _JoinClubsScreenState extends State<JoinClubsScreen> {
  @override
  Widget build(BuildContext context) {
    return PageLayout(
      listView: true,
      children: [
        const ScreenHeader(headerText: 'Socials'),
        const SizedBox(height: Styles.mainSpacing),
        ClubsList(
          title: 'Join Clubs',
          items: widget.clubs,
          showJoinClubsButton: false,
          onPressClub: widget.onPressClub,
        ),
      ],
    );
  }
}
