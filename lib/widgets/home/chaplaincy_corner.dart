import 'package:flutter/material.dart';
import 'package:staugustinechsnewapp/styles.dart';

class ChaplaincyCorner extends StatefulWidget {
  const ChaplaincyCorner({Key? key}) : super(key: key);
  @override
  State<ChaplaincyCorner> createState() => _ChaplaincyCornerState();
}

class _ChaplaincyCornerState extends State<ChaplaincyCorner> {
  double getWidth(BuildContext context) => MediaQuery.of(context).size.width;

  List<Widget> buildVerses() {
    List<Map<String, String>> sampleVerses = [
      {
        'title': 'Verse of The Day',
        'content':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
    ];

    List<Widget> verses = [const SizedBox(height: 20.0)];
    for (var announcement in sampleVerses) {
      verses.add(
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
                  style: Styles.regularSubText,
                ),
                Text(
                  announcement['content']!,
                  style: Styles.regularText,
                ),
              ],
            )),
      );
      verses.add(const SizedBox(height: 10.0));
    }
    return verses;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Styles.white,
            borderRadius: Styles.mainBorderRadius,
            boxShadow: Styles.regularBoxShadow),
        padding: const EdgeInsets.all(Styles.mainInsidePadding),
        width: getWidth(context),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Chaplaincy Corner', style: Styles.regularMainText),
            ...buildVerses(),
          ],
        ));
  }
}
