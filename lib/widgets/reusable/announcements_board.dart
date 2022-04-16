import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:staugustinechsnewapp/models/announcements/club_announcement/club_announcement.dart';
import 'package:staugustinechsnewapp/models/announcements/general_announcement/announcement.dart';
import 'package:staugustinechsnewapp/providers/network.dart';
import 'package:staugustinechsnewapp/styles.dart';
import 'package:staugustinechsnewapp/widgets/reusable/basic_container.dart';
import 'package:staugustinechsnewapp/widgets/reusable/rounded_button.dart';

class AnnouncementsBoard extends StatefulWidget {
  final List<Announcement>? announcements;
  final List<ClubAnnouncement>? clubAnnouncements;
  final bool isClubScreen;
  final Function()? onPressAddAnnouncement;

  const AnnouncementsBoard(
      {Key? key,
      this.announcements,
      this.clubAnnouncements,
      this.isClubScreen = false,
      this.onPressAddAnnouncement})
      : super(key: key);

  @override
  State<AnnouncementsBoard> createState() => _AnnouncementsBoardState();
}

class _AnnouncementsBoardState extends State<AnnouncementsBoard> {
  double getWidth(BuildContext context) => MediaQuery.of(context).size.width;

  Widget buildContent(String title, String content) {
    return Container(
        width: getWidth(context),
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
              Text(
                title,
                style: Styles.normalSubText,
              ),
              Linkify(
                text: content,
                style: Styles.normalText,
                linkStyle: Styles.urlText,
                onOpen: (link) async {
                  launchURL(url: link.url);
                },
              ),
            ]));
  }

  List<Widget> buildWrapper(
    List<Announcement> announcements,
    List<ClubAnnouncement> clubAnnouncements,
  ) {
    List<Widget> rows = [const SizedBox(height: 20.0)];

    for (var announcement in announcements) {
      rows.add(
        buildContent(announcement.title, announcement.content),
      );
      rows.add(const SizedBox(height: 10.0));
    }

    for (var clubAnnouncement in clubAnnouncements) {
      String title = widget.isClubScreen
          ? clubAnnouncement.creatorName
          : clubAnnouncement.clubName;
      rows.add(
        buildContent(title, clubAnnouncement.content),
      );
      rows.add(const SizedBox(height: 10.0));
    }

    return rows;
  }

  @override
  Widget build(BuildContext context) {
    List<Announcement> announcements = widget.announcements ?? [];
    List<ClubAnnouncement> clubAnnouncements = widget.clubAnnouncements ?? [];

    if (announcements.isEmpty && clubAnnouncements.isEmpty) {
      announcements.add(const Announcement(
          title: 'No announcements yet!',
          content: 'There are no announcements yet. Check back later!'));
    }

    return BasicContainer(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Announcements Board', style: Styles.normalMainText),
        ...buildWrapper(announcements, clubAnnouncements),
        if (widget.onPressAddAnnouncement != null) ...[
          const SizedBox(height: 15.0),
          RoundedButton(
              text: 'Add Announcement',
              onPressed: widget.onPressAddAnnouncement!),
        ]
      ],
    ));
  }
}
