import 'package:flutter/material.dart';
import 'package:staugustinechsnewapp/theme/styles.dart';
import 'package:staugustinechsnewapp/widgets/reusable/basic_container.dart';
import 'package:staugustinechsnewapp/widgets/reusable/custom_snackbar.dart';
import 'package:staugustinechsnewapp/widgets/reusable/show_confirmation_dialog.dart';

class ClubMembersList extends StatelessWidget {
  final String title;
  final List<String> members;
  final String userEmail;
  final bool isAdmin;
  final bool isDev;
  final Function(String userEmail)? onPressAddUser;
  final Function(String userEmail)? onPressPromoteUser;
  final Function(String userEmail)? onPressRemoveUser;

  const ClubMembersList(
      {Key? key,
      required this.title,
      required this.members,
      required this.userEmail,
      required this.isAdmin,
      this.isDev = false,
      this.onPressAddUser,
      this.onPressPromoteUser,
      this.onPressRemoveUser})
      : super(key: key);

  void onPressConfirmAdd(BuildContext context, String userEmail) {
    if (onPressAddUser != null) {
      onPressAddUser!(userEmail);
      Navigator.of(context).pop();
    } else {
      useCustomSnackbar(
          context: context,
          message: 'Something went wrong, please try again later',
          type: ESnackBarType.failure);
    }
  }

  void onPressConfirmPromote(BuildContext context, String userEmail) {
    if (onPressPromoteUser != null) {
      onPressPromoteUser!(userEmail);
      Navigator.of(context).pop();
    } else {
      useCustomSnackbar(
          context: context,
          message: 'Something went wrong, please try again later',
          type: ESnackBarType.failure);
    }
  }

  void onPressConfirmRemove(BuildContext context, String userEmail) {
    if (onPressRemoveUser != null) {
      onPressRemoveUser!(userEmail);
      Navigator.of(context).pop();
    } else {
      useCustomSnackbar(
          context: context,
          message: 'Something went wrong, please try again later',
          type: ESnackBarType.failure);
    }
  }

  List<Widget> buildMembers(BuildContext context) {
    return members
        .map((member) => Padding(
            padding: EdgeInsets.symmetric(vertical: isAdmin ? 0.0 : 10.0),
            child: Row(children: [
              Text(member),
              const Spacer(),
              if ((isAdmin && userEmail != member) || isDev) ...[
                if (onPressAddUser != null)
                  IconButton(
                    icon: const Icon(Icons.check, color: Styles.secondary),
                    onPressed: () => showConfirmationDialog(
                      context: context,
                      content: 'Are you sure you want to accept $member?',
                      onPressConfirm: () => onPressConfirmAdd(context, member),
                    ),
                  ),
                const SizedBox(width: 5.0),
                if (onPressPromoteUser != null)
                  IconButton(
                    icon: const Icon(Icons.star, color: Styles.secondary),
                    onPressed: () => showConfirmationDialog(
                      context: context,
                      content: 'Are you sure you want to promote $member?',
                      onPressConfirm: () =>
                          onPressConfirmPromote(context, member),
                    ),
                  ),
                const SizedBox(width: 5.0),
                IconButton(
                    onPressed: () => showConfirmationDialog(
                        context: context,
                        content: 'Are you sure you want to remove $member?',
                        onPressConfirm: () =>
                            onPressConfirmRemove(context, member)),
                    icon: const Icon(Icons.close_rounded,
                        color: Styles.secondary))
              ],
            ])))
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
