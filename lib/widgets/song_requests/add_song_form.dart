import 'package:flutter/material.dart';
import 'package:staugustinechsnewapp/styles.dart';
import 'package:staugustinechsnewapp/widgets/reusable/rounded_button.dart';
import 'package:staugustinechsnewapp/widgets/reusable/rounded_textfield.dart';

class AddSongForm extends StatefulWidget {
  final Function() onSubmitSong;
  const AddSongForm({Key? key, required this.onSubmitSong}) : super(key: key);

  @override
  State<AddSongForm> createState() => _AddSongFormState();
}

class _AddSongFormState extends State<AddSongForm> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 64.0, vertical: 5.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Text('Song Name', style: Styles.normalSubText),
          const SizedBox(height: 5.0),
          RoundedTextField(
              hintText: 'Song Name', controller: TextEditingController()),
          const SizedBox(height: 10.0),
          const Text('Artist Name', style: Styles.normalSubText),
          const SizedBox(height: 5.0),
          RoundedTextField(
              hintText: 'Artist Name', controller: TextEditingController()),
          const SizedBox(height: 10.0),
          RoundedButton(text: 'Submit', onPressed: widget.onSubmitSong),
          const SizedBox(height: 30.0),
          Container(
              alignment: Alignment.center,
              child: const Text(
                  'Note: \nAll song recommendations MUST be school appropriate, this means no explicit language or subjects.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12.0))),
        ]));
  }
}
