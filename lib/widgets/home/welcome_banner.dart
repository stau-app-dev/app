import 'package:flutter/material.dart';
import 'package:staugustinechsnewapp/styles.dart';

class WelcomeBanner extends StatefulWidget {
  const WelcomeBanner({Key? key}) : super(key: key);
  @override
  State<WelcomeBanner> createState() => _WelcomeBannerState();
}

class _WelcomeBannerState extends State<WelcomeBanner> {
  double getWidth(BuildContext context) => MediaQuery.of(context).size.width;
  double getChildWidth(BuildContext context, double percentage) =>
      getWidth(context) * percentage - Styles.mainInsidePadding;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Styles.primary,
            border: Border.all(
              color: Styles.secondary,
              width: 3.0,
            ),
            borderRadius: Styles.mainBorderRadius,
            boxShadow: Styles.headerBoxShadow),
        padding: const EdgeInsets.all(Styles.mainInsidePadding),
        width: getWidth(context),
        child: Row(
          children: [
            SizedBox(
                width: getChildWidth(context, 0.5),
                child: Wrap(
                  children: [
                    const Text('Welcome John Doe',
                        style: Styles.headerMainText),
                    Container(height: 10.0),
                    const Text('Today is a beautiful day 1,\nNovember 12, 2020',
                        style: Styles.headerSubText),
                  ],
                )),
            const Spacer(),
            SizedBox(
                width: getChildWidth(context, 0.3),
                child: Image.asset("assets/logos/sta_logo.png",
                    fit: BoxFit.fitWidth)),
          ],
        ));
  }
}
