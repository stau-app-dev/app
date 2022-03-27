import 'package:flutter/material.dart';
import 'package:staugustinechsnewapp/models/home/verse_of_day/verse_of_day.dart';
import 'package:staugustinechsnewapp/styles.dart';

class ChaplaincyCorner extends StatefulWidget {
  final VerseOfDay? verseOfDay;
  const ChaplaincyCorner({Key? key, this.verseOfDay}) : super(key: key);

  @override
  State<ChaplaincyCorner> createState() => _ChaplaincyCornerState();
}

class _ChaplaincyCornerState extends State<ChaplaincyCorner> {
  double getWidth(BuildContext context) => MediaQuery.of(context).size.width;

  Widget buildVerseOfDay(VerseOfDay verseOfDay) {
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
            const Text(
              'Verse of The Day',
              style: Styles.normalSubText,
            ),
            Text(
              verseOfDay.verseOfDay,
              style: Styles.normalText,
            ),
          ],
        ));
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
            const SizedBox(height: 20.0),
            widget.verseOfDay != null
                ? buildVerseOfDay(widget.verseOfDay!)
                : const Text('Loading...'),
          ],
        ));
  }
}
