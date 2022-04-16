import 'package:flutter/material.dart';
import 'package:staugustinechsnewapp/styles.dart';

/// {@template basic_container}
/// Reusable widget for displaying a container with a border radius and shadow.
/// {@endtemplate}
class BasicContainer extends StatelessWidget {
  /// The child widget to display inside the container.
  final Widget child;

  /// Decoration for the container.
  final Decoration? decoration;

  /// Padding for the container.
  final EdgeInsetsGeometry? padding;

  /// Function to call when the user presses on the container.
  final Function()? onPressed;

  /// {@macro basic_container}
  const BasicContainer(
      {Key? key,
      required this.child,
      this.decoration,
      this.padding,
      this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Decoration decoration = this.decoration ??
        BoxDecoration(
            color: Styles.white,
            borderRadius: Styles.mainBorderRadius,
            boxShadow: Styles.normalBoxShadow);

    EdgeInsetsGeometry padding =
        this.padding ?? const EdgeInsets.all(Styles.mainInsidePadding);

    Container container = Container(
        decoration: decoration,
        padding: padding,
        width: MediaQuery.of(context).size.width,
        child: child);

    if (onPressed != null) {
      return GestureDetector(
        onTap: onPressed,
        child: container,
      );
    } else {
      return container;
    }
  }
}
