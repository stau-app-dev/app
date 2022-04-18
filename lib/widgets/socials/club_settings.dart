import 'package:flutter/material.dart';
import 'package:staugustinechsnewapp/widgets/reusable/text_arrow_container.dart';

class ClubSettings extends StatelessWidget {
  final bool isAdmin;
  final Function() onPressMembersList;
  final Function() onPressLeaveClub;

  const ClubSettings(
      {Key? key,
      required this.isAdmin,
      required this.onPressMembersList,
      required this.onPressLeaveClub})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 5.0),
        child: Column(children: [
          TextArrowContainer(
              text: 'Member List', onPressed: onPressMembersList),
          if (isAdmin) ...[
            const SizedBox(height: 20.0),
            TextArrowContainer(text: 'Edit Club', onPressed: () {}),
          ],
          const SizedBox(height: 20.0),
          TextArrowContainer(text: 'Leave Club', onPressed: onPressLeaveClub),
        ]));
  }
}
