import 'package:flutter/material.dart';
import 'package:staugustinechsnewapp/models/cafe_menu/cafe_menu_item/cafe_menu_item.dart';
import 'package:staugustinechsnewapp/theme/styles.dart';
import 'package:staugustinechsnewapp/utilities/navigation/nav_bloc.dart';
import 'package:staugustinechsnewapp/widgets/reusable/image_shadow_container.dart';

class FeaturedCafeItems extends StatelessWidget {
  final NavBloc navBloc;
  final List<CafeMenuItem> cafeItems;

  const FeaturedCafeItems(
      {Key? key, required this.cafeItems, required this.navBloc})
      : super(key: key);

  Widget buildFeaturedCafeItems(BuildContext context) {
    double padding = Styles.mainHorizontalPadding;
    double tileWidth = MediaQuery.of(context).size.width * 0.3 - padding;
    double ratioXY = 0.6;

    Map<String, double> pictureContainerDimensions =
        Styles.pictureContainerDimensions(
            context: context, width: tileWidth, ratioXY: ratioXY);
    double tileHeight = pictureContainerDimensions['height']!;
    tileWidth = pictureContainerDimensions['width']!;

    List<Widget> featuredCafeItems = [];
    for (int i = 0; i < cafeItems.length; i++) {
      featuredCafeItems.add(Stack(children: [
        ImageShadowContainer(
            pictureUrl: cafeItems[i].pictureUrl,
            height: tileHeight,
            width: tileWidth),
        Container(
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
            alignment: Alignment.bottomCenter,
            height: tileHeight,
            width: tileWidth,
            child: Text(
              cafeItems[i].name,
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .copyWith(fontSize: 12.0, color: Colors.white),
            )),
      ]));
    }
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: featuredCafeItems);
  }

  Widget buildHeader(BuildContext context) {
    return Row(children: [
      Text('Featured Cafe Items', style: Theme.of(context).textTheme.titleLarge),
      const Spacer(),
      TextButton(
          onPressed: onViewMorePressed,
          child: Text('View More >',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: Styles.secondary))),
    ]);
  }

  void onViewMorePressed() {
    navBloc.add(const NavEvent.changeScreen(screen: ENav.cafeMenu));
  }

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
        width: MediaQuery.of(context).size.width,
        child: Column(children: [
          buildHeader(context),
          const SizedBox(height: 15.0),
          buildFeaturedCafeItems(context),
        ]));
  }
}
