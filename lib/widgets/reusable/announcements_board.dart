import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:staugustinechsnewapp/models/announcements/club_announcement/club_announcement.dart';
import 'package:staugustinechsnewapp/models/announcements/general_announcement/announcement.dart';
import 'package:staugustinechsnewapp/providers/network.dart';
import 'package:staugustinechsnewapp/theme/styles.dart';
import 'package:staugustinechsnewapp/widgets/reusable/basic_container.dart';
import 'package:staugustinechsnewapp/widgets/reusable/rounded_button.dart';

/// {@template announcements_board}
/// Reusable widget for displaying a list of announcements.
/// {@endtemplate}
class AnnouncementsBoard extends StatelessWidget {
  /// The list of general announcements.
  final List<Announcement>? announcements;

  /// The list of club announcements.
  final List<ClubAnnouncement>? clubAnnouncements;

  /// Whether or not it is on the club screen.
  final bool isClubScreen;

  /// Function to call when the user presses the Add Announcement button.
  final Function()? onPressAddAnnouncement;

  /// Function to call when the user presses and holds to delete an announcement.
  final Function(
      {required String id,
      required String content,
      required String creatorName})? onLongPressAnnouncement;

  /// {@macro announcements_board}
  const AnnouncementsBoard(
      {Key? key,
      this.announcements,
      this.clubAnnouncements,
      this.isClubScreen = false,
      this.onPressAddAnnouncement,
      this.onLongPressAnnouncement})
      : super(key: key);

  Widget buildContent(
      {required BuildContext context,
      required String title,
      required String content}) {
    return Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
        decoration: BoxDecoration(
            color: Styles.white,
            border: Border.all(
              color: Styles.primary,
              width: 1.0,
            ),
            borderRadius: Styles.mainBorderRadius),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(title, style: Theme.of(context).textTheme.subtitle2),
              Linkify(
                text: content,
                linkStyle: Theme.of(context).textTheme.bodyText2!.copyWith(
                      color: Styles.secondary,
                      decoration: TextDecoration.underline,
                    ),
                onOpen: (link) async {
                  launchURL(context: context, url: link.url);
                },
              ),
            ]));
  }

  List<Widget> buildWrapper(
      {required BuildContext context,
      required List<Announcement> data,
      required List<ClubAnnouncement> clubData}) {
    List<Widget> rows = [const SizedBox(height: 20.0)];

    for (var announcement in data) {
      rows.add(
        buildContent(
            context: context,
            title: announcement.title,
            content: announcement.content),
      );
      rows.add(const SizedBox(height: 10.0));
    }

    for (var clubAnnouncement in clubData) {
      String title = isClubScreen
          ? clubAnnouncement.creatorName
          : clubAnnouncement.clubName;
      rows.add(InkWell(
          onLongPress: onLongPressAnnouncement != null
              ? () => onLongPressAnnouncement!(
                  id: clubAnnouncement.id,
                  content: clubAnnouncement.content,
                  creatorName: clubAnnouncement.creatorName)
              : null,
          child: buildContent(
              context: context,
              title: title,
              content: clubAnnouncement.content)));
      rows.add(const SizedBox(height: 10.0));
    }

    return rows;
  }

  @override
  Widget build(BuildContext context) {
    List<Announcement> data = announcements ?? [];
    List<ClubAnnouncement> clubData = clubAnnouncements ?? [];

    if (data.isEmpty && clubData.isEmpty) {
      data.add(const Announcement(
          title: 'No announcements yet!',
          content: 'There are no announcements yet. Check back later!'));
    }

    return BasicContainer(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Announcements Board',
            style: Theme.of(context).textTheme.headline6),
        ...buildWrapper(context: context, data: data, clubData: clubData),
        if (onPressAddAnnouncement != null) ...[
          const SizedBox(height: 15.0),
          RoundedButton(
              text: 'Add Announcement', onPressed: onPressAddAnnouncement!),
        ]
      ],
    ));
  }
}
