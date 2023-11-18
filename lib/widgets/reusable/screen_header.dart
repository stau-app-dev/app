import 'package:flutter/material.dart';
import 'package:staugustinechsnewapp/theme/styles.dart';
import 'package:staugustinechsnewapp/widgets/reusable/basic_container.dart';

/// {@template screen_header}
/// A widget that displays the main header title for each screen.
/// {@endtemplate}
class ScreenHeader extends StatelessWidget {
  /// The title to display.
  final String headerText;

  /// {@macro screen_header}
  const ScreenHeader({Key? key, required this.headerText}) : super(key: key);

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
      child: Text(
        headerText,
        style: Theme.of(context)
            .textTheme
            .headlineSmall!
            .copyWith(color: Styles.white),
      ),
    );
  }
}
