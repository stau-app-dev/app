import 'package:flutter/material.dart';
import 'package:staugustinechsnewapp/styles.dart';
import 'package:staugustinechsnewapp/widgets/reusable/rounded_button.dart';
import 'package:staugustinechsnewapp/widgets/reusable/rounded_textfield.dart';

class ClubSettings extends StatefulWidget {
  final Function() onPressedSubmit;

  const ClubSettings({Key? key, required this.onPressedSubmit})
      : super(key: key);

  @override
  State<ClubSettings> createState() => _ClubSettingsState();
}

class _ClubSettingsState extends State<ClubSettings> {
  TextEditingController clubNameController = TextEditingController();
  TextEditingController clubDescriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 64.0, vertical: 5.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Text('Club Name', style: Styles.normalSubText),
          const SizedBox(height: 5.0),
          RoundedTextField(
              hintText: 'My Cool Club', controller: clubNameController),
          const SizedBox(height: 10.0),
          const Text('Club Desc.', style: Styles.normalSubText),
          const SizedBox(height: 5.0),
          RoundedTextField(
              hintText: 'My really cool description',
              isMultiline: true,
              controller: clubDescriptionController),
          const SizedBox(height: 10.0),
          RoundedButton(
              text: 'Submit', onPressed: () => widget.onPressedSubmit()),
          const SizedBox(height: 30.0)
        ]));
  }
}
