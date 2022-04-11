import 'package:flutter/material.dart';
import 'package:staugustinechsnewapp/styles.dart';
import 'package:staugustinechsnewapp/widgets/reusable/basic_container.dart';

/// {@template text_arrow_container}
/// A basic widget that displays text and an arrow icon.
/// {@endtemplate}
class TextArrowContainer extends StatelessWidget {
  final String text;
  final Function() onPressed;

  /// {@macro text_arrow_container}
  const TextArrowContainer(
      {Key? key, required this.text, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BasicContainer(
        padding: const EdgeInsets.all(Styles.mainInsidePadding + 5.0),
        onPressed: onPressed,
        child: Row(
          children: [
            Text(text, style: Styles.normalMainText),
            const Spacer(),
            const Icon(Icons.arrow_forward_rounded, color: Styles.secondary)
          ],
        ));
  }
}