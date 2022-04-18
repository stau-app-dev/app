import 'package:flutter/material.dart';
import 'package:staugustinechsnewapp/models/announcements/club_announcement/club_announcement.dart';
import 'package:staugustinechsnewapp/models/socials/club/club.dart';
import 'package:staugustinechsnewapp/screens/layout/page_layout.dart';
import 'package:staugustinechsnewapp/theme/styles.dart';
import 'package:staugustinechsnewapp/utilities/socials/consts.dart';
import 'package:staugustinechsnewapp/widgets/reusable/announcements_board.dart';
import 'package:staugustinechsnewapp/widgets/socials/club_description.dart';

class ClubScreen extends StatelessWidget {
  final Club? club;
  final List<ClubAnnouncement>? clubAnnouncements;
  final bool isPartOfClub;
  final EJoinButtonState joinButtonState;
  final Function() onRefresh;
  final Function() onPressJoin;
  final Function() onPressedSettings;
  final Function()? onPressAddAnnouncement;

  const ClubScreen({
    Key? key,
    required this.club,
    required this.clubAnnouncements,
    required this.isPartOfClub,
    required this.joinButtonState,
    required this.onRefresh,
    required this.onPressJoin,
    required this.onPressedSettings,
    this.onPressAddAnnouncement,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<ClubAnnouncement> data;

    if (clubAnnouncements != null && clubAnnouncements!.isNotEmpty) {
      data = clubAnnouncements!;
    } else {
      data = [];
    }

    List<Widget> topSection = isPartOfClub
        ? [
            Align(
                alignment: Alignment.topRight,
                child: IconButton(
                    onPressed: onPressedSettings,
                    icon: const Icon(
                      Icons.settings_rounded,
                      color: Styles.white,
                    ))),
            const SizedBox(height: 85.0),
          ]
        : [
            const SizedBox(height: 130.0),
          ];

    return PageLayout(
      verticalPadding: 0,
      listView: true,
      onRefresh: onRefresh,
      children: [
        ...topSection,
        Text(
          club?.name ?? '',
          style: Theme.of(context).textTheme.headline5!.copyWith(
                color: Styles.white,
              ),
        ),
        const SizedBox(height: 125.0),
        ClubDescription(
          description: club?.description ?? '',
          onPressJoin: onPressJoin,
          isPartOfClub: isPartOfClub,
          joinButtonState: joinButtonState,
        ),
        const SizedBox(height: 20.0),
        if (isPartOfClub) ...[
          AnnouncementsBoard(
            clubAnnouncements: data,
            isClubScreen: true,
            onPressAddAnnouncement: onPressAddAnnouncement,
          ),
          const SizedBox(height: 20.0),
        ]
      ],
    );
  }
}
