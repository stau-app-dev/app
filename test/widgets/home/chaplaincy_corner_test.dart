import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:staugustinechsnewapp/widgets/home/chaplaincy_corner.dart';

void main() {
  group('ChaplaincyCorner widget tests', () {
    List<Map<String, String>> testVerses = [
      {
        'title': 'Verse of The Day',
        'content': 'Living on a prayer.',
      },
    ];

    testWidgets('it displays title', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: ChaplaincyCorner(verses: testVerses),
          ),
        ),
      );

      expect(find.text('Verse of The Day'), findsOneWidget);
    });

    testWidgets('it displays items', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: ChaplaincyCorner(verses: testVerses),
          ),
        ),
      );

      expect(find.text('Living on a prayer.'), findsNWidgets(1));
    });
  });
}
