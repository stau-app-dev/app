import 'package:flutter/material.dart';
import 'package:staugustinechsnewapp/utilities/socials/consts.dart';
import 'package:staugustinechsnewapp/widgets/reusable/basic_container.dart';
import 'package:staugustinechsnewapp/widgets/reusable/rounded_button.dart';

class ClubDescription extends StatelessWidget {
  final String description;
  final String? instructionsToJoin;
  final bool isPartOfClub;
  final EJoinButtonState joinButtonState;
  final Function()? onPressJoin;

  const ClubDescription(
      {Key? key,
      required this.description,
      this.instructionsToJoin,
      required this.isPartOfClub,
      required this.joinButtonState,
      this.onPressJoin})
      : super(key: key);

  String getJoinButtonText() {
    switch (joinButtonState) {
      case EJoinButtonState.notOpen:
        return 'Not Open to Join';
      case EJoinButtonState.request:
        return 'Request to Join';
      case EJoinButtonState.open:
        return 'Join';
      case EJoinButtonState.pending:
        return 'Pending';
      default:
        return 'Not Open to Join';
    }
  }

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
        if (!isPartOfClub) ...[
          const SizedBox(height: 10.0),
          RoundedButton(
              text: getJoinButtonText(),
              disabled: joinButtonState == EJoinButtonState.pending ||
                  joinButtonState == EJoinButtonState.notOpen,
              onPressed: onPressJoin!),
        ]
      ],
    ));
  }
}
