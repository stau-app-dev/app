import 'package:flutter/material.dart';
import 'package:staugustinechsnewapp/styles.dart';
import 'package:staugustinechsnewapp/widgets/reusable/rounded_button.dart';
import 'package:staugustinechsnewapp/widgets/reusable/rounded_textfield.dart';

class ClubSettings extends StatefulWidget {
  final Function() onPressedSubmit;

  const ClubSettings({Key? key, required this.onPressedSubmit})
      : super(key: key);

  @override
  State<ClubSettings> createState() => _ClubSettingsState();
}

class _ClubSettingsState extends State<ClubSettings> {
  double getWidth(BuildContext context) => MediaQuery.of(context).size.width;
  EdgeInsetsGeometry padding =
      const EdgeInsets.symmetric(vertical: 7.0, horizontal: 16.0);

  TextEditingController clubNameController = TextEditingController();
  TextEditingController clubDescriptionController = TextEditingController();

  List<Widget> buildJoinPreferences() {
    List<String> joinPreferences = [
      'Not accepting new members',
      'Members need admin approval',
      'Anyone can join',
    ];

    List<Widget> rows = [];
    for (var preference in joinPreferences) {
      rows.add(
        Container(
            width: getWidth(context),
            decoration: BoxDecoration(
                color: Styles.white,
                border: Border.all(
                  color: Styles.primary,
                  width: 1.0,
                ),
                borderRadius: Styles.mainBorderRadius),
            child: Row(
              children: <Widget>[
                Padding(
                    padding: padding,
                    child: Text(
                      preference,
                      style: Styles.normalSubText,
                    )),
                const Spacer(),
                Container(
                    alignment: Alignment.center,
                    width: 50.0,
                    decoration: const BoxDecoration(
                      border: Border(
                        left: BorderSide(width: 1.0, color: Styles.primary),
                      ),
                      // color: Colors.white,
                    ),
                    child: Padding(
                        padding: padding,
                        child: InkWell(onTap: () {}, child: const Text(''))))
              ],
            )),
      );
      rows.add(const SizedBox(height: 10.0));
    }
    return rows;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 45.0, vertical: 5.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Text('Club Name', style: Styles.normalSubText),
          const SizedBox(height: 5.0),
          RoundedTextField(
              hintText: 'My Cool Club', controller: clubNameController),
          const SizedBox(height: 10.0),
          const Text('Club Desc.', style: Styles.normalSubText),
          const SizedBox(height: 5.0),
          RoundedTextField(
              hintText: 'My really cool description',
              isMultiline: true,
              controller: clubDescriptionController),
          const SizedBox(height: 20.0),
          const Text('Banner', style: Styles.normalSubText),
          const SizedBox(height: 5.0),
          Container(
            color: Styles.grey,
            height: 100.0,
          ),
          const SizedBox(height: 5.0),
          RoundedButton(text: 'Choose Image', onPressed: () {}),
          const SizedBox(height: 20.0),
          const Text('Join Preferences', style: Styles.normalSubText),
          const SizedBox(height: 5.0),
          ...buildJoinPreferences(),
          const SizedBox(height: 10.0),
          RoundedButton(
              text: 'Create Club', onPressed: () => widget.onPressedSubmit()),
        ]));
  }
}
