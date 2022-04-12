import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:staugustinechsnewapp/models/cafe_menu/cafe_menu_item/cafe_menu_item.dart';
import 'package:staugustinechsnewapp/screens/layout/page_layout.dart';
import 'package:staugustinechsnewapp/widgets/cafe_menu/cafe_items.dart';

void main() {
  group('CafeMenuItems widget tests', () {
    testWidgets('it displays title', (tester) async {
      String testTitle = 'Cafe Items';

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: CafeMenuItems(
              title: testTitle,
              items: const [],
            ),
          ),
        ),
      );

      expect(find.text(testTitle), findsOneWidget);
    });

    testWidgets('it displays items', (tester) async {
      String testTitle = 'Cafe Menu Items';
      List<CafeMenuItem> testItems = [
        const CafeMenuItem(
          name: 'Cafe Menu Item',
          pictureId: '1',
          pictureUrl: 'https://example.com/1',
          price: 1.0,
          isTodaysSpecial: true,
        ),
        const CafeMenuItem(
          name: 'Cafe Menu Item',
          pictureId: '2',
          pictureUrl: 'https://example.com/2',
          price: 2.5,
          isTodaysSpecial: false,
        ),
        const CafeMenuItem(
          name: 'Cafe Menu Item',
          pictureId: '2',
          pictureUrl: 'https://example.com/2',
          price: 2.0,
          isTodaysSpecial: false,
        ),
      ];

      await tester.pumpWidget(
        MaterialApp(
          home: PageLayout(listView: true, children: [
            CafeMenuItems(
              title: testTitle,
              items: testItems,
            )
          ]),
        ),
      );
      await tester.pumpAndSettle();

      expect(find.text('Cafe Menu Item'), findsNWidgets(3));
      expect(find.text('\$2.00'), findsNWidgets(1));
    });
  });
}
