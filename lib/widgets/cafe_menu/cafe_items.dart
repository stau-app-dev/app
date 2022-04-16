import 'package:flutter/material.dart';
import 'package:staugustinechsnewapp/models/cafe_menu/cafe_menu_item/cafe_menu_item.dart';
import 'package:staugustinechsnewapp/theme/styles.dart';
import 'package:staugustinechsnewapp/widgets/reusable/basic_container.dart';
import 'package:staugustinechsnewapp/widgets/reusable/image_shadow_container.dart';

class CafeItems extends StatelessWidget {
  final String title;
  final List<CafeMenuItem> items;

  const CafeItems({Key? key, required this.title, required this.items})
      : super(key: key);

  Widget buildTile(
      {required BuildContext context,
      required String name,
      required double price,
      required String pictureUrl}) {
    double padding = Styles.mainHorizontalPadding * 2;
    double tileWidth = MediaQuery.of(context).size.width * 0.5 - padding;
    double ratioXY = 0.83;

    Map<String, double> pictureContainerDimensions =
        Styles.pictureContainerDimensions(
            context: context, width: tileWidth, ratioXY: ratioXY);
    double tileHeight = pictureContainerDimensions['height']!;
    tileWidth = pictureContainerDimensions['width']!;

    return Stack(children: [
      ImageShadowContainer(
          pictureUrl: pictureUrl, height: tileHeight, width: tileWidth),
      Container(
          height: tileHeight,
          width: tileWidth,
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
          child: Container(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Flexible(
                      child: Text(
                    name,
                    textAlign: TextAlign.start,
                    style: const TextStyle(
                        fontFamily: Styles.fontFamilyNormal,
                        fontWeight: FontWeight.bold,
                        color: Styles.white),
                  )),
                  Text(
                    '\$${price.toStringAsFixed(2)}',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontFamily: Styles.fontFamilyNormal,
                        color: Styles.white),
                  )
                ],
              )))
    ]);
  }

  Widget buildItems(BuildContext context) {
    List<Widget> rows = [];
    for (int i = 0; i < items.length; i += 2) {
      rows.add(Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildTile(
              context: context,
              name: items[i].name,
              price: items[i].price,
              pictureUrl: items[i].pictureUrl),
          if (i + 1 < items.length)
            buildTile(
                context: context,
                name: items[i + 1].name,
                price: items[i + 1].price,
                pictureUrl: items[i + 1].pictureUrl)
        ],
      ));
      rows.add(const SizedBox(height: 10.0));
    }
    return Column(children: rows);
  }

  @override
  Widget build(BuildContext context) {
    return BasicContainer(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: Styles.normalMainText),
        const SizedBox(height: Styles.mainSpacing),
        buildItems(context)
      ],
    ));
  }
}
