import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:staugustinechsnewapp/theme/styles.dart';
import 'package:staugustinechsnewapp/widgets/reusable/basic_container.dart';

class WelcomeBanner extends StatelessWidget {
  final int? dayNumber;
  final String? userName;

  const WelcomeBanner({Key? key, this.dayNumber, this.userName})
      : super(key: key);

  double getChildWidth(BuildContext context, double percentage) =>
      MediaQuery.of(context).size.width * percentage - Styles.mainInsidePadding;

  @override
  Widget build(BuildContext context) {
    String welcomeText =
        userName != null ? 'Welcome $userName' : 'Welcome to St. Augustine';
    String dayNumberText = dayNumber != null ? 'day $dayNumber' : 'day';
    String dateText = DateFormat('MMMM d, yyyy').format(DateTime.now());

    return BasicContainer(
        decoration: BoxDecoration(
            color: Styles.primary,
            border: Border.all(
              color: Styles.secondary,
              width: 3.0,
            ),
            borderRadius: Styles.mainBorderRadius,
            boxShadow: Styles.headerBoxShadow),
        child: Row(
          children: [
            SizedBox(
                width: getChildWidth(context, 0.5),
                child: Wrap(
                  children: [
                    Text(
                      welcomeText,
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .copyWith(color: Styles.white),
                    ),
                    Container(height: 10.0),
                    Text('Today is a beautiful $dayNumberText,\n$dateText',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: Styles.white,
                            )),
                  ],
                )),
            const Spacer(),
            Container(
                constraints: const BoxConstraints(maxHeight: 200.0),
                width: getChildWidth(context, 0.3),
                child: Image.asset('assets/logos/sta_logo.png',
                    fit: BoxFit.fitHeight)),
          ],
        ));
  }
}
