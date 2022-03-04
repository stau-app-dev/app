import 'package:flutter/material.dart';
import 'package:staugustinechsnewapp/styles.dart';

class BadgesList extends StatefulWidget {
  final String title;
  final List<Map<String, String>> badges;

  const BadgesList({Key? key, required this.title, required this.badges})
      : super(key: key);

  @override
  State<BadgesList> createState() => _BadgesListState();
}

class _BadgesListState extends State<BadgesList> {
  double getWidth(BuildContext context) => MediaQuery.of(context).size.width;

  Widget buildItems() {
    double radius = 30.0;
    List<Widget> rows = [];
    for (var badge in widget.badges) {
      rows.add(
        Row(children: [
          CircleAvatar(
              backgroundColor: Styles.secondary,
              radius: radius + 2.0,
              child: CircleAvatar(
                radius: radius,
                backgroundImage: AssetImage(badge['image']!),
                backgroundColor: Styles.grey,
              )),
          const SizedBox(width: 20.0),
          Text(badge['name']!,
              style: Styles.normalMainText
                  .copyWith(fontSize: Styles.fontSizeNormal)),
        ]),
      );
      rows.add(const SizedBox(height: 20.0));
    }
    return Column(children: rows);
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
            Text(widget.title, style: Styles.normalMainText),
            const SizedBox(height: Styles.mainSpacing),
            buildItems(),
          ],
        ));
  }
}
