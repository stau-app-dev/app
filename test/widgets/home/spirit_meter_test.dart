import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:staugustinechsnewapp/widgets/home/spirit_meter.dart';
import 'package:staugustinechsnewapp/widgets/reusable/rounded_linear_progress_indicator.dart';

void main() {
  group('SpiritMeter widget tests', () {
    Map<int, double> testSpiritMeterData = {
      9: 40.0,
      10: 53.0,
      11: 66.0,
      12: 100.0,
    };

    testWidgets('it displays title', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: SpiritMeter(spiritMeterData: testSpiritMeterData),
          ),
        ),
      );

      expect(find.text('Spirit Meter'), findsOneWidget);
    });

    testWidgets('it displays items', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: SpiritMeter(spiritMeterData: testSpiritMeterData),
          ),
        ),
      );
      await tester.pumpAndSettle();

      expect(find.byType(RoundedLinearProgressIndicator), findsNWidgets(4));
      int i = 0;
      testSpiritMeterData.forEach((key, value) {
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
