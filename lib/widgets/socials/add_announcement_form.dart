import 'package:flutter/material.dart';
import 'package:staugustinechsnewapp/styles.dart';
import 'package:staugustinechsnewapp/widgets/reusable/rounded_button.dart';
import 'package:staugustinechsnewapp/widgets/reusable/rounded_textfield.dart';

class AddAnnouncementForm extends StatefulWidget {
  final Function(String content) onPressedSubmit;

  const AddAnnouncementForm({Key? key, required this.onPressedSubmit})
      : super(key: key);

  @override
  State<AddAnnouncementForm> createState() => _AddAnnouncementFormState();
}

class _AddAnnouncementFormState extends State<AddAnnouncementForm> {
  TextEditingController contentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 64.0, vertical: 5.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Text('Announcement', style: Styles.normalSubText),
          const SizedBox(height: 5.0),
          RoundedTextField(
              hintText: 'My announcement to all the subjects of ymir',
              controller: contentController,
              isMultiline: true,
              height: 80.0),
          const SizedBox(height: 10.0),
          RoundedButton(
              text: 'Submit',
              onPressed: () => widget.onPressedSubmit(contentController.text)),
        ]));
  }
}
