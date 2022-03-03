import 'package:flutter/material.dart';
import 'package:staugustinechsnewapp/styles.dart';

class ScreenHeader extends StatefulWidget {
  final String headerText;
  const ScreenHeader({Key? key, required this.headerText}) : super(key: key);
  @override
  State<ScreenHeader> createState() => _ScreenHeaderState();
}

class _ScreenHeaderState extends State<ScreenHeader> {
  double getWidth(BuildContext context) => MediaQuery.of(context).size.width;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Styles.primary,
          borderRadius: Styles.mainBorderRadius,
          boxShadow: [
            BoxShadow(
              color: Styles.primary,
              spreadRadius: 0,
              blurRadius: 5,
              offset: Offset(0, 0),
            )
          ]),
      padding: const EdgeInsets.all(Styles.mainInsidePadding + 4.0),
      width: getWidth(context),
      child: Text(widget.headerText, style: Styles.headerMainText),
    );
  }
}
