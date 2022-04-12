import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:staugustinechsnewapp/models/cafe_menu/cafe_menu_item/cafe_menu_item.dart';
import 'package:staugustinechsnewapp/styles.dart';
import 'package:staugustinechsnewapp/utilities/navigation/nav_bloc.dart';
import 'package:staugustinechsnewapp/widgets/reusable/image_shadow_container.dart';

class FeaturedCafeItems extends StatefulWidget {
  final List<CafeMenuItem> cafeItems;
  const FeaturedCafeItems({Key? key, required this.cafeItems})
      : super(key: key);
  @override
  State<FeaturedCafeItems> createState() => _FeaturedCafeItemsState();
}

class _FeaturedCafeItemsState extends State<FeaturedCafeItems> {
  late NavBloc navBloc;
  double getWidth(BuildContext context) => MediaQuery.of(context).size.width;

  @override
  void initState() {
    navBloc = BlocProvider.of<NavBloc>(context);
    super.initState();
  }

  Widget buildFeaturedCafeItems() {
    double padding = Styles.mainOutsidePadding;
    double tileWidth = getWidth(context) * 0.3 - padding;
    double ratioXY = 0.6;

    Map<String, double> pictureContainerDimensions =
        Styles.pictureContainerDimensions(
            context: context, width: tileWidth, ratioXY: ratioXY);
    double tileHeight = pictureContainerDimensions['height']!;
    tileWidth = pictureContainerDimensions['width']!;

    List<Widget> featuredCafeItems = [];
    for (int i = 0; i < widget.cafeItems.length; i++) {
      featuredCafeItems.add(Stack(children: [
        ImageShadowContainer(
            pictureUrl: widget.cafeItems[i].pictureUrl,
            height: tileHeight,
            width: tileWidth),
        Container(
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
            alignment: Alignment.bottomCenter,
            height: tileHeight,
            width: tileWidth,
            child: Text(
              widget.cafeItems[i].name,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontFamily: Styles.fontFamilyNormal,
                  fontSize: 11.0,
                  fontWeight: FontWeight.bold,
                  color: Styles.white),
            )),
      ]));
    }
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: featuredCafeItems);
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
        width: getWidth(context),
        child: Column(children: [
          buildHeader(),
          const SizedBox(height: 15.0),
          buildFeaturedCafeItems(),
        ]));
  }
}
