import 'package:flutter/material.dart';

void showConfirmationDialog(
    {required BuildContext context,
    required String title,
    required String content,
    required Function() onPressConfirm}) {
  Widget cancelButton = TextButton(
    child: const Text('Cancel'),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );

  Widget continueButton = TextButton(
    child: const Text('Confirm'),
    onPressed: onPressConfirm,
  );

  AlertDialog alert = AlertDialog(
    title: Text(title),
    content: Text(
      content,
      style: Theme.of(context).textTheme.bodyText2,
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
