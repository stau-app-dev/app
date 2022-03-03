import 'package:flutter/material.dart';
import 'package:staugustinechsnewapp/styles.dart';

class RoundedTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;

  /// Custom textfield for the app. Please use this as it follows the Figma design.
  const RoundedTextField(
      {Key? key, required this.hintText, required this.controller})
      : super(key: key);

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
      height: 35.0,
      child: 
    TextField(
      controller: controller,
      cursorColor: Styles.secondary,
      textAlignVertical: TextAlignVertical.center,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: Styles.regularText.copyWith(color: Styles.grey, fontSize: 12),
        border: border,
        enabledBorder: border,
        focusedBorder: focusedBorder,
        contentPadding: const EdgeInsets.symmetric(horizontal: 15.0),
      ),
      style: Styles.regularText.copyWith(fontSize: 12.0),
    ));
  }
}
