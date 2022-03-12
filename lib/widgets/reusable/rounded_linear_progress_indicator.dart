// From: https://stackoverflow.com/a/67898454/10014923

import 'package:flutter/material.dart';
import 'package:staugustinechsnewapp/styles.dart';

/// Creates a RoundedLinearProgressIndicator. Unlike the original, this one has a rounded edge all around.
class RoundedLinearProgressIndicator extends StatelessWidget {
  /// The progress value of the progress indicator.
  final double value;

  /// The max value of the progress indicator.
  final double max;

  /// The main color of the progress indicator.
  final Color color;

  /// The background color of the progress indicator.
  final Color backgroundColor;

  /// The height of the progress indicator.
  final double height;

  /// Creates a RoundedLinearProgressIndicator. Unlike the original, this one has a rounded edge all around.
  const RoundedLinearProgressIndicator(
      {Key? key,
      required this.value,
      required this.max,
      this.color = Styles.primary,
      this.backgroundColor = Styles.grey,
      this.height = 5})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double borderRadius = 35;
    return LayoutBuilder(
      builder: (_, boxConstraints) {
        var x = boxConstraints.maxWidth;
        var percent = (value / max) * x;
        return Stack(
          children: [
            Container(
              width: x,
              height: height,
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.circular(borderRadius),
              ),
            ),
            AnimatedContainer(
              duration: const Duration(milliseconds: 500),
              width: percent,
              height: height,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(borderRadius),
              ),
            ),
          ],
        );
      },
    );
  }
}
