import 'package:flutter/material.dart';
import 'package:staugustinechsnewapp/widgets/reusable/rounded_button.dart';

class DeleteAnnouncementForm extends StatelessWidget {
  final String id;
  final String content;
  final String creatorName;
  final Function(String id) onSubmitDeleteAnnouncement;

  const DeleteAnnouncementForm(
      {Key? key,
      required this.id,
      required this.content,
      required this.creatorName,
      required this.onSubmitDeleteAnnouncement})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 64.0, vertical: 5.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text('Announcement', style: Theme.of(context).textTheme.titleSmall),
          const SizedBox(height: 5.0),
          Text(content),
          const SizedBox(height: 5.0),
          Text('Creator Name', style: Theme.of(context).textTheme.titleSmall),
          const SizedBox(height: 5.0),
          Text(creatorName),
          const SizedBox(height: 10.0),
          RoundedButton(
              text: 'Delete', onPressed: () => onSubmitDeleteAnnouncement(id)),
        ]));
  }
}
