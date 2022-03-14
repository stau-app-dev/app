import 'package:flutter/material.dart';
import 'package:staugustinechsnewapp/styles.dart';

/// Custom snackbar to display.
/// By default it uses a translucent secondary background color and primary text color.
///
/// The [message] is displayed in the snackbar.
/// The [isError] parameter can be set to true to display an error message.
/// The [isSuccess] parameter can be set to true to display a success message.
void useCustomSnackbar(
    {required BuildContext context,
    required String message,
    bool isError = false,
    bool isSuccess = false}) {
  double opacity = 0.95;
  Color backgroundColor = Styles.secondary.withOpacity(opacity);
  Color textColor = Styles.primary;

  if (isError) {
    backgroundColor = Colors.red.withOpacity(opacity);
    textColor = Styles.white;
  } else if (isSuccess) {
    backgroundColor = Colors.green.withOpacity(opacity);
    textColor = Styles.white;
  }

  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    backgroundColor: backgroundColor,
    behavior: SnackBarBehavior.floating,
    elevation: 6.0,
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20))),
    content: Text(
      message,
      style: TextStyle(color: textColor),
    ),
  ));
}
