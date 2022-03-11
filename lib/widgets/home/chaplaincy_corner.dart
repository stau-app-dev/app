import 'package:flutter/material.dart';
import 'package:staugustinechsnewapp/styles.dart';

class ChaplaincyCorner extends StatefulWidget {
  final List<Map<String, String>> verses;
  const ChaplaincyCorner({Key? key, required this.verses}) : super(key: key);
  @override
  State<ChaplaincyCorner> createState() => _ChaplaincyCornerState();
}

class _ChaplaincyCornerState extends State<ChaplaincyCorner> {
  double getWidth(BuildContext context) => MediaQuery.of(context).size.width;

  List<Widget> buildVerses() {
    List<Widget> verses = [const SizedBox(height: 20.0)];
    for (var announcement in widget.verses) {
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
                  style: Styles.normalSubText,
                ),
                Text(
                  announcement['content']!,
                  style: Styles.normalText,
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
            boxShadow: Styles.normalBoxShadow),
        padding: const EdgeInsets.all(Styles.mainInsidePadding),
        width: getWidth(context),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Chaplaincy Corner', style: Styles.normalMainText),
            ...buildVerses(),
          ],
        ));
  }
}
