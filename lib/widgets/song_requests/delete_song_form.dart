import 'package:flutter/material.dart';
import 'package:staugustinechsnewapp/widgets/reusable/rounded_button.dart';

class DeleteSongForm extends StatelessWidget {
  final String id;
  final String name;
  final String artist;
  final String creatorEmail;
  final Function(String id) onSubmitDeleteSong;

  const DeleteSongForm(
      {Key? key,
      required this.onSubmitDeleteSong,
      required this.id,
      required this.name,
      required this.artist,
      required this.creatorEmail})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 64.0, vertical: 5.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text('Song Name', style: Theme.of(context).textTheme.subtitle2),
          const SizedBox(height: 5.0),
          Text(name),
          const SizedBox(height: 10.0),
          Text('Artist Name', style: Theme.of(context).textTheme.subtitle2),
          const SizedBox(height: 5.0),
          Text(artist),
          const SizedBox(height: 10.0),
          Text('Creator Email', style: Theme.of(context).textTheme.subtitle2),
          const SizedBox(height: 5.0),
          Text(creatorEmail),
          const SizedBox(height: 10.0),
          RoundedButton(
              text: 'Delete', onPressed: () => onSubmitDeleteSong(id)),
          const SizedBox(height: 30.0),
          Container(
              alignment: Alignment.center,
              child: const Text(
                  'Note: \nIf a student continues to suggest inappropriate songs, admins can request for app privileges to be stripped.',
                  textAlign: TextAlign.center)),
        ]));
  }
}
