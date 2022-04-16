import 'package:flutter/material.dart';
import 'package:staugustinechsnewapp/models/announcements/club_announcement/club_announcement.dart';
import 'package:staugustinechsnewapp/models/socials/club/club.dart';
import 'package:staugustinechsnewapp/screens/layout/page_layout.dart';
import 'package:staugustinechsnewapp/styles.dart';
import 'package:staugustinechsnewapp/widgets/reusable/announcements_board.dart';
import 'package:staugustinechsnewapp/widgets/socials/club_description.dart';

class ClubScreen extends StatefulWidget {
  final Club? club;
  final List<ClubAnnouncement>? clubAnnouncements;
  final Function() onRefresh;
  final Function() onPressJoin;
  final Function()? onPressAddAnnouncement;

  const ClubScreen({
    Key? key,
    required this.club,
    required this.clubAnnouncements,
    required this.onRefresh,
    required this.onPressJoin,
    this.onPressAddAnnouncement,
  }) : super(key: key);

  @override
  State<ClubScreen> createState() => _ClubScreenState();
}

class _ClubScreenState extends State<ClubScreen> {
  @override
  Widget build(BuildContext context) {
    List<ClubAnnouncement> clubAnnouncements;

    if (widget.clubAnnouncements != null &&
        widget.clubAnnouncements!.isNotEmpty) {
      clubAnnouncements = widget.clubAnnouncements!;
    } else {
      clubAnnouncements = [];
    }

    return PageLayout(
      verticalPadding: 0,
      listView: true,
      onRefresh: widget.onRefresh,
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
        const SizedBox(height: 20.0),
        AnnouncementsBoard(
          clubAnnouncements: clubAnnouncements,
          isClubScreen: true,
          onPressAddAnnouncement: widget.onPressAddAnnouncement,
        ),
        const SizedBox(height: 20.0),
      ],
    );
  }
}
