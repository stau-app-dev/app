import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:staugustinechsnewapp/models/announcements/general_announcement/announcement.dart';
import 'package:staugustinechsnewapp/providers/network.dart';
import 'package:staugustinechsnewapp/styles.dart';
import 'package:staugustinechsnewapp/widgets/reusable/basic_container.dart';

class AnnouncementsBoard extends StatefulWidget {
  final List<Announcement>? announcements;
  final List<Announcement>? clubAnnouncements;

  const AnnouncementsBoard(
      {Key? key, this.announcements, this.clubAnnouncements})
      : super(key: key);

  @override
  State<AnnouncementsBoard> createState() => _AnnouncementsBoardState();
}

class _AnnouncementsBoardState extends State<AnnouncementsBoard> {
  double getWidth(BuildContext context) => MediaQuery.of(context).size.width;

  List<Widget> buildItems(List<Announcement> announcements) {
    List<Widget> rows = [const SizedBox(height: 20.0)];
    for (var announcement in announcements) {
      rows.add(
        Container(
            width: getWidth(context),
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
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
                  announcement.title,
                  style: Styles.normalSubText,
                ),
                Linkify(
                  text: announcement.content,
                  style: Styles.normalText,
                  linkStyle: Styles.urlText,
                  onOpen: (link) async {
                    launchURL(url: link.url);
                  },
                ),
              ],
            )),
      );
      rows.add(const SizedBox(height: 10.0));
    }
    return rows;
  }

  @override
  Widget build(BuildContext context) {
    List<Announcement> announcements = widget.announcements ?? [];
    List<Announcement> clubAnnouncements = widget.clubAnnouncements ?? [];
    List<Announcement> allAnnouncements = [];

    if (announcements.isEmpty && clubAnnouncements.isEmpty) {
      allAnnouncements.add(const Announcement(
          title: 'No announcements yet!',
          content: 'There are no announcements yet. Check back later!'));
    } else {
      allAnnouncements.addAll(announcements);
      allAnnouncements.addAll(clubAnnouncements);
    }

    return BasicContainer(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Announcements Board', style: Styles.normalMainText),
        ...buildItems(allAnnouncements),
      ],
    ));
  }
}
