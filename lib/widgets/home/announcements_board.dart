import 'package:flutter/material.dart';
import 'package:staugustinechsnewapp/styles.dart';

class AnnouncementsBoard extends StatefulWidget {
  const AnnouncementsBoard({Key? key}) : super(key: key);
  @override
  State<AnnouncementsBoard> createState() => _AnnouncementsBoardState();
}

class _AnnouncementsBoardState extends State<AnnouncementsBoard> {
  double getWidth(BuildContext context) => MediaQuery.of(context).size.width;

  List<Widget> buildItems() {
    List<Map<String, String>> sampleAnnouncements = [
      {
        'title': 'Announcement 1',
        'content': 'Nice',
      },
      {
        'title': 'St. Augustine CHS App Dev Team',
        'content': 'New App coming soon, check in for more updates',
      },
      {
        'title': 'Our Roots Club',
        'content':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
      {
        'title': 'Wow super long club name and or announcement title',
        'content':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
    ];

    List<Widget> rows = [const SizedBox(height: 20.0)];
    for (var announcement in sampleAnnouncements) {
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
                  announcement['title']!,
                  style: Styles.normalSubText,
                ),
                Text(
                  announcement['content']!,
                  style: Styles.normalText,
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
            ...buildItems(),
          ],
        ));
  }
}
