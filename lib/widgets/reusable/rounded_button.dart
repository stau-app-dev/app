import 'package:flutter/material.dart';
import 'package:staugustinechsnewapp/theme/styles.dart';

/// {@template rounded_button}
/// Custom button for the app. Please use this as it follows the Figma design.
/// {@endtemplate}
class RoundedButton extends StatelessWidget {
  /// The text to display on the button.
  final String text;

  /// Is the button disabled.
  final bool disabled;

  /// The function to execute when the button is pressed.
  final Function onPressed;

  /// {@macro rounded_button}
  const RoundedButton(
      {Key? key,
      required this.text,
      required this.onPressed,
      this.disabled = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: MediaQuery.of(context).size.width,
        child: ElevatedButton(
            onPressed: disabled ? null : () => onPressed(),
            style: disabled
                ? ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Styles.white),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Styles.grey),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        const RoundedRectangleBorder(
                            borderRadius: Styles.mainBorderRadius,
                            side: BorderSide(color: Styles.grey))))
                : null,
            child: Text(text,
                style: Theme.of(context)
                    .textTheme
                    .titleSmall!
                    .copyWith(color: Colors.white))));
  }
}
