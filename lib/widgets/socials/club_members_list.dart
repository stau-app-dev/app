import 'package:flutter/material.dart';
import 'package:staugustinechsnewapp/theme/styles.dart';
import 'package:staugustinechsnewapp/widgets/reusable/basic_container.dart';
import 'package:staugustinechsnewapp/widgets/reusable/show_confirmation_dialog.dart';

class ClubMembersList extends StatelessWidget {
  final String title;
  final List<String> members;
  final bool isAdmin;
  final bool isPending;
  final Function(String userEmail) onPressAddUser;
  final Function(String userEmail) onPressRemoveUser;

  const ClubMembersList(
      {Key? key,
      required this.title,
      required this.members,
      required this.isAdmin,
      this.isPending = false,
      required this.onPressAddUser,
      required this.onPressRemoveUser})
      : super(key: key);

  List<Widget> buildMembers(BuildContext context) {
    return members
        .map((member) => Padding(
            padding: EdgeInsets.symmetric(vertical: isAdmin ? 0.0 : 10.0),
            child: Row(
              children: [
                Text(member),
                if (isAdmin) ...[
                  const Spacer(),
                  if (isPending) ...[
                    IconButton(
                      icon: const Icon(Icons.check, color: Styles.secondary),
                      onPressed: () => showConfirmationDialog(
                        context: context,
                        title: 'Confirm',
                        content: 'Are you sure you want to accept $member?',
                        onPressConfirm: () {
                          onPressAddUser(member);
                          Navigator.of(context).pop();
                        },
                      ),
                    ),
                    const SizedBox(width: 5.0),
                  ],
                  IconButton(
                      onPressed: () {
                        showConfirmationDialog(
                            context: context,
                            title: 'Confirmation',
                            content: 'Are you sure you want to remove $member?',
                            onPressConfirm: () {
                              onPressRemoveUser(member);
                              Navigator.of(context).pop();
                            });
                      },
                      icon: const Icon(Icons.close_rounded,
                          color: Styles.secondary))
                ]
              ],
            )))
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