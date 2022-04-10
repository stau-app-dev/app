import 'package:flutter/material.dart';
import 'package:staugustinechsnewapp/styles.dart';
import 'package:staugustinechsnewapp/widgets/reusable/basic_container.dart';

/// {@template screen_header}
/// A widget that displays the main header title for each screen.
/// {@endtemplate}
class ScreenHeader extends StatefulWidget {
  /// The title to display.
  final String headerText;

  /// {@macro screen_header}
  const ScreenHeader({Key? key, required this.headerText}) : super(key: key);
  @override
  State<ScreenHeader> createState() => _ScreenHeaderState();
}

class _ScreenHeaderState extends State<ScreenHeader> {
  double getWidth(BuildContext context) => MediaQuery.of(context).size.width;

  @override
  Widget build(BuildContext context) {
    return BasicContainer(
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
      child: Text(widget.headerText, style: Styles.headerMainText),
    );
  }
}
