import 'package:flutter/material.dart';
import 'package:staugustinechsnewapp/theme/styles.dart';
import 'package:staugustinechsnewapp/widgets/reusable/basic_container.dart';
import 'package:staugustinechsnewapp/widgets/reusable/rounded_button.dart';

class ClubDescription extends StatelessWidget {
  final String description;
  final String? instructionsToJoin;
  final Function()? onPressJoin;

  const ClubDescription(
      {Key? key,
      required this.description,
      this.instructionsToJoin,
      this.onPressJoin})
      : super(key: key);

  // This is unused, but it's here for future reference.
  Widget buildInstructionsToJoin(BuildContext context) {
    if (instructionsToJoin == null || onPressJoin == null) {
      return Container();
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 15.0),
        Text('Instructions to Join',
            style: Theme.of(context)
                .textTheme
                .headline6!
                .copyWith(fontSize: 11.0)),
        const SizedBox(height: 10.0),
        Text(instructionsToJoin ?? ''),
        const SizedBox(height: 10.0),
        RoundedButton(text: 'Join!', onPressed: onPressJoin!),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return BasicContainer(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Description', style: Theme.of(context).textTheme.headline6),
        const SizedBox(height: 10.0),
        Text(description),
        buildInstructionsToJoin(context),
      ],
    ));
  }
}
