import 'package:flutter/material.dart';
import 'package:staugustinechsnewapp/screens/layout/page_layout.dart';
import 'package:staugustinechsnewapp/styles.dart';
import 'package:staugustinechsnewapp/widgets/socials/club_members_list.dart';

class ClubMembersScreen extends StatelessWidget {
  final String clubName;
  final Function() onPressBack;
  final List<String> admins;
  final List<String> members;
  final List<String>? pending;

  const ClubMembersScreen(
      {Key? key,
      required this.onPressBack,
      required this.clubName,
      required this.admins,
      required this.members,
      this.pending})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isAdmin = pending != null;

    List<String> adminData = ['There are no admins'];
    if (admins.isNotEmpty) {
      adminData = admins;
    }
    List<String> membersData = ['There are no members'];
    if (members.isNotEmpty) {
      membersData = members;
    }
    List<String> pendingData = ['There are no pending members'];
    if (isAdmin && pending!.isNotEmpty) {
      pendingData = pending!;
    }

    return PageLayout(
      verticalPadding: 0,
      listView: true,
      children: [
        Align(
            alignment: Alignment.topLeft,
            child: IconButton(
                onPressed: onPressBack,
                icon: const Icon(
                  Icons.arrow_back_rounded,
                  color: Styles.white,
                ))),
        const SizedBox(height: 85.0),
        Text('$clubName Settings',
            style: Styles.headerMainText, textAlign: TextAlign.center),
        const SizedBox(height: 125.0),
        ClubMembersList(
          title: 'Admins',
          members: adminData,
          isAdmin: isAdmin && admins.isNotEmpty,
        ),
        const SizedBox(height: 20.0),
        ClubMembersList(
          title: 'Members List',
          members: membersData,
          isAdmin: isAdmin && members.isNotEmpty,
        ),
        const SizedBox(height: 20.0),
        if (isAdmin)
          ClubMembersList(
            title: 'Pending',
            members: pendingData,
            isAdmin: isAdmin && pending!.isNotEmpty,
          ),
        const SizedBox(height: 20.0),
      ],
    );
  }
}
