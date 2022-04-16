import 'package:flutter/material.dart';
import 'package:staugustinechsnewapp/styles.dart';

/// {@template rounded_text_field}
/// Custom textfield for the app. Please use this as it follows the Figma design.
/// {@endtemplate}
class RoundedTextField extends StatefulWidget {
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
  State<RoundedTextField> createState() => _RoundedTextFieldState();
}

class _RoundedTextFieldState extends State<RoundedTextField> {
  @override
  Widget build(BuildContext context) {
    OutlineInputBorder border = const OutlineInputBorder(
      borderRadius: Styles.mainBorderRadius,
      borderSide: BorderSide(
        color: Styles.primary,
        width: 1.0,
      ),
    );
    OutlineInputBorder focusedBorder = const OutlineInputBorder(
      borderRadius: Styles.mainBorderRadius,
      borderSide: BorderSide(
        color: Styles.secondary,
        width: 1.0,
      ),
    );

    return SizedBox(
        height: widget.height,
        child: TextField(
          expands: widget.isMultiline,
          controller: widget.controller,
          keyboardType: widget.isMultiline ? TextInputType.multiline : null,
          maxLines: widget.isMultiline ? null : 1,
          cursorColor: Styles.secondary,
          textAlignVertical: TextAlignVertical.center,
          decoration: InputDecoration(
            hintText: widget.hintText,
            hintMaxLines: widget.isMultiline ? 10 : null,
            hintStyle:
                Styles.normalText.copyWith(color: Styles.grey, fontSize: 12),
            border: border,
            enabledBorder: border,
            focusedBorder: focusedBorder,
            contentPadding: const EdgeInsets.symmetric(horizontal: 15.0),
          ),
          style: Styles.normalText.copyWith(fontSize: 12.0),
        ));
  }
}
