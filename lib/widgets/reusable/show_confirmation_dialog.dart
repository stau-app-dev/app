import 'package:flutter/material.dart';

void showConfirmationDialog(
    {required BuildContext context,
    String title = 'Confirmation',
    required String content,
    required Function() onPressConfirm}) {
  Widget cancelButton = TextButton(
    child: const Text('Cancel'),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );

  Widget continueButton = TextButton(
    onPressed: onPressConfirm,
    child: const Text('Confirm'),
  );

  AlertDialog alert = AlertDialog(
    title: Text(title),
    content: Text(
      content,
      style: Theme.of(context).textTheme.bodyMedium,
    ),
    actions: [
      cancelButton,
      continueButton,
    ],
  );

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
