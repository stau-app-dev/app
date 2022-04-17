import 'package:flutter/material.dart';
import 'package:staugustinechsnewapp/theme/styles.dart';
import 'package:staugustinechsnewapp/widgets/reusable/basic_container.dart';

/// {@template text_arrow_container}
/// A basic widget that displays text and an arrow icon.
/// {@endtemplate}
class TextArrowContainer extends StatelessWidget {
  /// The text to display.
  final String text;

  /// Function to call when the container is pressed.
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
            Text(text, style: Theme.of(context).textTheme.headline6),
            const Spacer(),
            const Icon(Icons.arrow_forward_rounded, color: Styles.secondary)
          ],
        ));
  }
}
