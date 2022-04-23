import 'package:flutter/material.dart';
import 'package:staugustinechsnewapp/screens/layout/page_layout.dart';
import 'package:staugustinechsnewapp/theme/styles.dart';
import 'package:staugustinechsnewapp/widgets/socials/club_members_list.dart';

class ClubMembersScreen extends StatelessWidget {
  final String clubName;
  final Function() onPressBack;
  final String userEmail;
  final List<String> admins;
  final List<String> members;
  final List<String>? pending;
  final bool isDev;
  final Function(String userEmail) onPressAddUser;
  final Function(String userEmail) onPressPromoteUser;
  final Function(String userEmail) onPressRemoveUser;

  const ClubMembersScreen(
      {Key? key,
      required this.clubName,
      required this.onPressBack,
      required this.userEmail,
      required this.admins,
      required this.members,
      this.pending,
      this.isDev = false,
      required this.onPressAddUser,
      required this.onPressPromoteUser,
      required this.onPressRemoveUser})
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
        Text(
          '$clubName Settings',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headline5!.copyWith(
                color: Styles.white,
              ),
        ),
        const SizedBox(height: 125.0),
        ClubMembersList(
          title: 'Admins',
          members: adminData,
          userEmail: userEmail,
          isAdmin: isAdmin && admins.isNotEmpty,
          isDev: isDev,
          onPressRemoveUser: onPressRemoveUser,
        ),
        const SizedBox(height: 20.0),
        ClubMembersList(
          title: 'Members List',
          members: membersData,
          userEmail: userEmail,
          isAdmin: isAdmin && members.isNotEmpty,
          isDev: isDev,
          onPressPromoteUser: onPressPromoteUser,
          onPressRemoveUser: onPressRemoveUser,
        ),
        const SizedBox(height: 20.0),
        if (isAdmin)
          ClubMembersList(
            title: 'Pending',
            members: pendingData,
            userEmail: userEmail,
            isAdmin: isAdmin && pending!.isNotEmpty,
            isDev: isDev,
            onPressAddUser: onPressAddUser,
            onPressRemoveUser: onPressRemoveUser,
          ),
        const SizedBox(height: 20.0),
      ],
    );
  }
}
