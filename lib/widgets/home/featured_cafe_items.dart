import 'package:flutter/material.dart';
import 'package:staugustinechsnewapp/styles.dart';

class FeaturedCafeItems extends StatefulWidget {
  const FeaturedCafeItems({Key? key}) : super(key: key);
  @override
  State<FeaturedCafeItems> createState() => _FeaturedCafeItemsState();
}

class _FeaturedCafeItemsState extends State<FeaturedCafeItems> {
  double getWidth(BuildContext context) => MediaQuery.of(context).size.width;

  Widget buildFeaturedCafeItems() {
    List<Map<String, String>> sampleFeaturedCafeItems = [
      {
        'food': 'Caramel Latte',
        'image': 'assets/images/cat.jpg',
      },
      {
        'food': 'Mocha',
        'image': 'assets/images/cat.jpg',
      },
      {
        'food': 'Pumpkin Spice Latte with Vanilla Cream',
        'image': 'assets/images/cat.jpg',
      },
    ];

    List<Widget> featuredCafeItems = [];
    for (int i = 0; i < sampleFeaturedCafeItems.length; i++) {
      featuredCafeItems.add(Container(
        height: Styles.featuredCafeItemHeight,
        width: getWidth(context) * 0.3 - (Styles.mainOutsidePaddingValue),
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(sampleFeaturedCafeItems[i]['image']!),
              fit: BoxFit.cover,
            ),
            border: Border.all(
              color: Styles.primary,
              width: 1.0,
            ),
            borderRadius: Styles.mainBorderRadius),
        child: Container(
            alignment: Alignment.bottomCenter,
            child: Text(
              sampleFeaturedCafeItems[i]['food']!,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontFamily: Styles.fontFamilyNormal,
                  fontSize: 11.0,
                  fontWeight: FontWeight.bold,
                  color: Styles.white),
            )),
      ));
      if (i != sampleFeaturedCafeItems.length - 1) {
        featuredCafeItems.add(const Spacer());
      }
    }
    return Row(children: featuredCafeItems);
  }

  Widget buildHeader() {
    return Row(children: [
      const Text('Featured Cafe Items', style: Styles.normalMainText),
      const Spacer(),
      TextButton(
          onPressed: onViewMorePressed,
          child: const Text('View More >',
              style: TextStyle(
                  fontFamily: Styles.fontFamilyNormal,
                  color: Styles.secondary))),
    ]);
  }

  void onViewMorePressed() {}

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Styles.white,
            borderRadius: Styles.mainBorderRadius,
            boxShadow: Styles.normalBoxShadow),
        padding: const EdgeInsets.only(
            left: Styles.mainInsidePadding,
            right: Styles.mainInsidePadding,
            top: Styles.mainInsidePadding - 10,
            bottom: Styles.mainInsidePadding),
        width: getWidth(context),
        child: Column(children: [
          buildHeader(),
          const SizedBox(height: 15.0),
          buildFeaturedCafeItems(),
        ]));
  }
}
