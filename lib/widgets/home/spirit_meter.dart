import 'package:flutter/material.dart';
import 'package:staugustinechsnewapp/styles.dart';
import 'package:staugustinechsnewapp/widgets/reusable/rounded_progress_bar.dart';

class SpiritMeter extends StatefulWidget {
  const SpiritMeter({Key? key}) : super(key: key);
  @override
  State<SpiritMeter> createState() => _SpiritMeterState();
}

class _SpiritMeterState extends State<SpiritMeter> {
  double getWidth(BuildContext context) => MediaQuery.of(context).size.width;

  List<Widget> buildSpiritMeters() {
    Map<int, double> spiritPointsData = {
      9: 40.0,
      10: 53.0,
      11: 66.0,
      12: 100.0,
    };
    List<Widget> spiritMeters = [];
    spiritPointsData.forEach((key, value) {
      spiritMeters.add(SizedBox(
        width: getWidth(context),
        height: 30.0,
        child: Row(children: [
          SizedBox(
              width: getWidth(context) * 0.075,
              child: Text(
                '$key',
                style: const TextStyle(
                  color: Styles.primary,
                  fontSize: Styles.fontSizeNormal,
                  fontFamily: Styles.fontFamilyTitles,
                  fontWeight: FontWeight.bold,
                ),
              )),
          Expanded(
              child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  child: RoundedLinearProgressIndicator(
                      max: 100,
                      value: value,
                      color: Styles.secondary,
                      backgroundColor: Styles.transparent,
                      height: 7.5))),
        ]),
      ));
    });
    return spiritMeters;
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
            const Text('Spirit Meter', style: Styles.regularMainText),
            const SizedBox(height: 20.0),
            ...buildSpiritMeters(),
          ],
        ));
  }
}
