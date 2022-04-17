import 'package:flutter/material.dart';
import 'package:staugustinechsnewapp/screens/layout/page_layout.dart';
import 'package:staugustinechsnewapp/theme/styles.dart';
import 'package:staugustinechsnewapp/widgets/reusable/basic_container.dart';
import 'package:staugustinechsnewapp/widgets/reusable/screen_header.dart';
import 'package:staugustinechsnewapp/widgets/reusable/text_arrow_container.dart';

class SettingsScreen extends StatelessWidget {
  final void Function() onPressedLogout;
  final void Function() onPressedFAQ;

  const SettingsScreen(
      {Key? key, required this.onPressedLogout, required this.onPressedFAQ})
      : super(key: key);

  Widget buildOptions(BuildContext context) {
    return BasicContainer(
        child: Column(
      children: [
        TextButton(
            onPressed: onPressedLogout,
            child:
                Text('Log Out', style: Theme.of(context).textTheme.subtitle2)),
      ],
    ));
  }

  Widget buildFAQ() {
    return TextArrowContainer(text: 'FAQ', onPressed: onPressedFAQ);
  }

  @override
  Widget build(BuildContext context) {
    return PageLayout(
      children: [
        const ScreenHeader(headerText: 'Settings'),
        const SizedBox(height: Styles.mainSpacing),
        buildOptions(context),
        const SizedBox(height: Styles.mainSpacing),
        buildFAQ(),
      ],
    );
  }
}
