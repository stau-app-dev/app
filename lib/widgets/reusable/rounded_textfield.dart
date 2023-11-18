import 'package:flutter/material.dart';

/// {@template rounded_text_field}
/// Custom textfield wrapper for the app. Please use this as it follows the Figma design.
/// {@endtemplate}
class RoundedTextField extends StatelessWidget {
  /// The hint text to display.
  final String hintText;

  /// The controller for the textfield.
  final TextEditingController controller;

  /// Is Multiline
  final bool isMultiline;

  /// Height of the textfield.
  final double height;

  /// {@macro rounded_text_field}
  const RoundedTextField(
      {Key? key,
      required this.hintText,
      required this.controller,
      this.isMultiline = false,
      this.height = 35.0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: height,
        child: TextField(
          expands: isMultiline,
          controller: controller,
          keyboardType: isMultiline ? TextInputType.multiline : null,
          maxLines: isMultiline ? null : 1,
          textAlignVertical: TextAlignVertical.center,
          decoration: InputDecoration(
            hintText: hintText,
            hintMaxLines: isMultiline ? 10 : null,
            contentPadding: const EdgeInsets.symmetric(horizontal: 15.0),
          ),
          style: Theme.of(context).textTheme.bodyMedium,
        ));
  }
}
