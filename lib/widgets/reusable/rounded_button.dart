import 'package:flutter/material.dart';
import 'package:staugustinechsnewapp/styles.dart';

/// {@template rounded_button}
/// Custom button for the app. Please use this as it follows the Figma design.
/// {@endtemplate}
class RoundedButton extends StatelessWidget {
  /// The text to display on the button.
  final String text;

  /// The function to execute when the button is pressed.
  final Function onPressed;

  /// {@macro rounded_button}
  const RoundedButton({Key? key, required this.text, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: MediaQuery.of(context).size.width,
        child: ElevatedButton(
            child: Text(text,
                style: const TextStyle(
                    color: Styles.white,
                    fontFamily: Styles.fontFamilyTitles,
                    fontWeight: FontWeight.bold)),
            style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Styles.white),
                backgroundColor:
                    MaterialStateProperty.all<Color>(Styles.secondary),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    const RoundedRectangleBorder(
                        borderRadius: Styles.mainBorderRadius,
                        side: BorderSide(color: Styles.secondary)))),
            onPressed: () => onPressed()));
  }
}
