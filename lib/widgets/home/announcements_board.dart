import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:staugustinechsnewapp/models/announcements/general_announcement/general_announcement.dart';
import 'package:staugustinechsnewapp/providers/network.dart';
import 'package:staugustinechsnewapp/styles.dart';

class AnnouncementsBoard extends StatefulWidget {
  final List<GeneralAnnouncement>? announcements;
  const AnnouncementsBoard({Key? key, required this.announcements})
      : super(key: key);
  @override
  State<AnnouncementsBoard> createState() => _AnnouncementsBoardState();
}

class _AnnouncementsBoardState extends State<AnnouncementsBoard> {
  double getWidth(BuildContext context) => MediaQuery.of(context).size.width;

  List<Widget> buildItems(List<GeneralAnnouncement> announcements) {
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
    List<GeneralAnnouncement> announcements = widget.announcements ??
        [
          const GeneralAnnouncement(
              title: 'No Announcements',
              content: 'There are no announcements at this time.')
        ];

    return Container(
        decoration: BoxDecoration(
            color: Styles.white,
            borderRadius: Styles.mainBorderRadius,
            boxShadow: Styles.normalBoxShadow),
        padding: const EdgeInsets.all(Styles.mainInsidePadding),
        width: getWidth(context),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Announcements Board', style: Styles.normalMainText),
            ...buildItems(announcements),
          ],
        ));
  }
}
