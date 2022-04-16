import 'package:flutter/material.dart';
import 'package:staugustinechsnewapp/styles.dart';

/// Custom snackbar to display.
/// By default it uses a translucent secondary background color and primary text color.
///
/// The [message] is displayed in the snackbar.
/// The [type] parameter is used to determine the snackbar's background color and text color.
void useCustomSnackbar(
    {required BuildContext context,
    required String message,
    required ESnackBarType type}) {
  double opacity = 0.95;
  Color backgroundColor;
  Color textColor;

  if (type == ESnackBarType.failure) {
    backgroundColor = Colors.red.withOpacity(opacity);
    textColor = Styles.white;
  } else if (type == ESnackBarType.success) {
    backgroundColor = Colors.green.withOpacity(opacity);
    textColor = Styles.white;
  } else if (type == ESnackBarType.info) {
    backgroundColor = Styles.secondary.withOpacity(opacity);
    textColor = Styles.primary;
  } else {
    backgroundColor = Styles.secondary.withOpacity(opacity);
    textColor = Styles.primary;
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

/// Snackbar types:
/// - [ESnackBarType.failure]
/// - [ESnackBarType.success]
/// - [ESnackBarType.info]
enum ESnackBarType {
  failure,
  success,
  info,
}
