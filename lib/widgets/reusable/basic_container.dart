import 'package:flutter/material.dart';
import 'package:staugustinechsnewapp/styles.dart';

/// {@template basic_container}
/// Reusable widget for displaying a container with a border radius and shadow.
/// {@endtemplate}
class BasicContainer extends StatelessWidget {
  final Widget child;
  final Decoration? decoration;
  final EdgeInsetsGeometry? padding;

  /// {@macro basic_container}
  const BasicContainer(
      {Key? key, required this.child, this.decoration, this.padding})
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

    return Container(
        decoration: decoration,
        padding: padding,
        width: MediaQuery.of(context).size.width,
        child: child);
  }
}
