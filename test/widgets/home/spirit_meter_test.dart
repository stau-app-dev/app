import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:staugustinechsnewapp/models/home/spirit_meters/spirit_meters.dart';
import 'package:staugustinechsnewapp/screens/layout/page_layout.dart';
import 'package:staugustinechsnewapp/widgets/home/spirit_meter.dart';
import 'package:staugustinechsnewapp/widgets/reusable/rounded_linear_progress_indicator.dart';

void main() {
  group('SpiritMeter widget tests', () {
    SpiritMeters testSpiritMeterData = const SpiritMeters(
      nine: 40,
      ten: 53,
      eleven: 60.3,
      twelve: 50.3,
    );

    testWidgets('it displays title', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: PageLayout(
            listView: true,
            children: [SpiritMeterBars(spiritMeters: testSpiritMeterData)],
          ),
        ),
      );

      expect(find.text('Spirit Meter'), findsOneWidget);
    });

    testWidgets('it displays items', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: PageLayout(
            listView: true,
            children: [SpiritMeterBars(spiritMeters: testSpiritMeterData)],
          ),
        ),
      );
      await tester.pumpAndSettle();

      expect(find.byType(RoundedLinearProgressIndicator), findsNWidgets(4));
      int i = 0;
      testSpiritMeterData.toJson().forEach((key, value) {
        RoundedLinearProgressIndicator roundedLinearProgressIndicator = find
            .byType(RoundedLinearProgressIndicator)
            .evaluate()
            .elementAt(i)
            .widget as RoundedLinearProgressIndicator;
        expect(roundedLinearProgressIndicator.value, value);
        i += 1;
      });
    });
  });
}
