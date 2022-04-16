import 'package:flutter/material.dart';
import 'package:staugustinechsnewapp/styles.dart';
import 'package:staugustinechsnewapp/widgets/reusable/basic_container.dart';

class ClubMembersList extends StatelessWidget {
  final String title;
  final List<String> members;

  const ClubMembersList({Key? key, required this.title, required this.members})
      : super(key: key);

  List<Widget> buildMembers() {
    return members
        .map((member) => Text(member, style: Styles.normalText))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return BasicContainer(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: Styles.normalMainText),
        const SizedBox(height: 10.0),
        ...buildMembers(),
      ],
    ));
  }
}
