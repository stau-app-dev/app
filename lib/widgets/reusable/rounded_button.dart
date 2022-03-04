import 'package:flutter/material.dart';
import 'package:staugustinechsnewapp/styles.dart';

class RoundedButton extends StatefulWidget {
  final String text;
  final Function onPressed;

  /// Custom button for the app. Please use this as it follows the Figma design.
  const RoundedButton({Key? key, required this.text, required this.onPressed})
      : super(key: key);
  @override
  State<RoundedButton> createState() => _RoundedButtonState();
}

class _RoundedButtonState extends State<RoundedButton> {
  double getWidth(BuildContext context) => MediaQuery.of(context).size.width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: getWidth(context),
        child: ElevatedButton(
            child: Text(widget.text,
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
            onPressed: () => widget.onPressed()));
  }
}
