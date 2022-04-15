import 'package:flutter/material.dart';
import 'package:staugustinechsnewapp/styles.dart';
import 'package:staugustinechsnewapp/widgets/reusable/basic_container.dart';
import 'package:staugustinechsnewapp/widgets/reusable/rounded_button.dart';

class ClubDescription extends StatefulWidget {
  final String description;
  final String? instructionsToJoin;
  final Function()? onPressJoin;

  const ClubDescription(
      {Key? key,
      required this.description,
      this.instructionsToJoin,
      this.onPressJoin})
      : super(key: key);

  @override
  State<ClubDescription> createState() => _ClubDescriptionState();
}

class _ClubDescriptionState extends State<ClubDescription> {
  // This is unused, but it's here for future reference.
  Widget buildInstructionsToJoin() {
    if (widget.instructionsToJoin == null || widget.onPressJoin == null) {
      return Container();
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 15.0),
        Text('Instructions to Join',
            style: Styles.normalMainText.copyWith(fontSize: 11.0)),
        const SizedBox(height: 10.0),
        Text(widget.instructionsToJoin ?? '', style: Styles.normalText),
        const SizedBox(height: 10.0),
        RoundedButton(text: 'Join!', onPressed: widget.onPressJoin!),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return BasicContainer(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Description', style: Styles.normalMainText),
        const SizedBox(height: 10.0),
        Text(widget.description, style: Styles.normalText),
        buildInstructionsToJoin(),
      ],
    ));
  }
}
