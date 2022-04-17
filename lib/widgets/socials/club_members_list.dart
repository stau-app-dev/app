import 'package:flutter/material.dart';
import 'package:staugustinechsnewapp/theme/styles.dart';
import 'package:staugustinechsnewapp/widgets/reusable/basic_container.dart';
import 'package:staugustinechsnewapp/widgets/reusable/show_confirmation_dialog.dart';

class ClubMembersList extends StatelessWidget {
  final String title;
  final List<String> members;
  final bool isAdmin;

  const ClubMembersList(
      {Key? key,
      required this.title,
      required this.members,
      required this.isAdmin})
      : super(key: key);

  List<Widget> buildMembers(BuildContext context) {
    return members
        .map((member) => Row(
              children: [
                Text(member),
                if (isAdmin) ...[
                  const Spacer(),
                  IconButton(
                      onPressed: () {
                        showConfirmationDialog(
                            context: context,
                            title: 'Confirmation',
                            content: 'Are you sure you want to remove $member?',
                            onPressConfirm: () {
                              Navigator.of(context).pop();
                            });
                      },
                      icon: const Icon(Icons.close_rounded,
                          color: Styles.secondary))
                ]
              ],
            ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return BasicContainer(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: Theme.of(context).textTheme.headline6),
        const SizedBox(height: 10.0),
        ...buildMembers(context),
      ],
    ));
  }
}
