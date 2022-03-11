import 'package:flutter/material.dart';
import 'package:staugustinechsnewapp/styles.dart';
import 'package:staugustinechsnewapp/widgets/reusable/rounded_linear_progress_indicator.dart';

class SpiritMeter extends StatefulWidget {
  final Map<int, double> spiritMeterData;
  const SpiritMeter({Key? key, required this.spiritMeterData})
      : super(key: key);
  @override
  State<SpiritMeter> createState() => _SpiritMeterState();
}

class _SpiritMeterState extends State<SpiritMeter> {
  double getWidth(BuildContext context) => MediaQuery.of(context).size.width;

  List<Widget> buildSpiritMeters() {
    List<Widget> spiritMeters = [];
    widget.spiritMeterData.forEach((key, value) {
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
            boxShadow: Styles.normalBoxShadow),
        padding: const EdgeInsets.all(Styles.mainInsidePadding),
        width: getWidth(context),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Spirit Meter', style: Styles.normalMainText),
            const SizedBox(height: 20.0),
            ...buildSpiritMeters(),
          ],
        ));
  }
}
