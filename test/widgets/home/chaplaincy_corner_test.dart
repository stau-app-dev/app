import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:staugustinechsnewapp/models/home/verse_of_day/verse_of_day.dart';
import 'package:staugustinechsnewapp/widgets/home/chaplaincy_corner.dart';

void main() {
  group('ChaplaincyCorner widget tests', () {
    VerseOfDay testVerses = const VerseOfDay(verseOfDay: 'Living on a prayer.');

    testWidgets('it displays title', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: ChaplaincyCorner(verseOfDay: testVerses),
          ),
        ),
      );

      expect(find.text('Verse of The Day'), findsOneWidget);
    });

    testWidgets('it displays items', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: ChaplaincyCorner(verseOfDay: testVerses),
          ),
        ),
      );

      expect(find.text('Living on a prayer.'), findsNWidgets(1));
    });
  });
}
