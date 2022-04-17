import 'package:flutter/material.dart';
import 'package:staugustinechsnewapp/theme/styles.dart';

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
                style: Theme.of(context)
                    .textTheme
                    .subtitle2!
                    .copyWith(color: Colors.white)),
            onPressed: () => onPressed()));
  }
}
