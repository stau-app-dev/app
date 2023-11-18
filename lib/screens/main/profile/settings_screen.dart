import 'package:flutter/material.dart';
import 'package:staugustinechsnewapp/screens/layout/page_layout.dart';
import 'package:staugustinechsnewapp/theme/styles.dart';
import 'package:staugustinechsnewapp/widgets/reusable/basic_container.dart';
import 'package:staugustinechsnewapp/widgets/reusable/screen_header.dart';
import 'package:staugustinechsnewapp/widgets/reusable/text_arrow_container.dart';

class SettingsScreen extends StatelessWidget {
  final bool enableGeneralNotifications;
  final Function(bool) onToggleGeneralNotifications;
  final Function() onPressedSendFeedback;
  final Function() onPressedLogout;
  final Function() onPressedFAQ;

  const SettingsScreen(
      {Key? key,
      required this.enableGeneralNotifications,
      required this.onToggleGeneralNotifications,
      required this.onPressedSendFeedback,
      required this.onPressedLogout,
      required this.onPressedFAQ})
      : super(key: key);

  Widget buildToggleRow(
      {required BuildContext context,
      required String title,
      required bool value,
      required void Function(bool) onChanged}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleSmall,
        ),
        Switch(
            value: value,
            onChanged: onChanged,
            activeTrackColor: Styles.secondary,
            activeColor: Styles.white,
            inactiveThumbColor: Styles.white,
            inactiveTrackColor: Styles.primary),
      ],
    );
  }

  Widget buildOptions(BuildContext context) {
    return BasicContainer(
        child: Column(
      children: [
        buildToggleRow(
          context: context,
          title: 'Enable General Notifications',
          value: enableGeneralNotifications,
          onChanged: onToggleGeneralNotifications,
        ),
        TextButton(
            onPressed: onPressedSendFeedback,
            child: Text('Send Feedback',
                style: Theme.of(context).textTheme.titleSmall)),
        TextButton(
            onPressed: onPressedLogout,
            child:
                Text('Log Out', style: Theme.of(context).textTheme.titleSmall)),
      ],
    ));
  }

  @override
  Widget build(BuildContext context) {
    return PageLayout(
      children: [
        const ScreenHeader(headerText: 'Settings'),
        const SizedBox(height: Styles.mainSpacing),
        buildOptions(context),
        const SizedBox(height: Styles.mainSpacing),
        TextArrowContainer(text: 'FAQ', onPressed: onPressedFAQ),
      ],
    );
  }
}
