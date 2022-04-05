import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:staugustinechsnewapp/models/cafe_menu/cafe_menu_item/cafe_menu_item.dart';
import 'package:staugustinechsnewapp/styles.dart';

class CafeMenuItems extends StatefulWidget {
  final String title;
  final List<CafeMenuItem> items;
  const CafeMenuItems({Key? key, required this.title, required this.items})
      : super(key: key);
  @override
  State<CafeMenuItems> createState() => _CafeMenuItemsState();
}

class _CafeMenuItemsState extends State<CafeMenuItems> {
  double getWidth(BuildContext context) => MediaQuery.of(context).size.width;

  Widget buildTile(
      {required String name,
      required double price,
      required String pictureUrl}) {
    double tileWidth =
        getWidth(context) * 0.5 - (Styles.mainOutsidePadding * 2);

    return Container(
        height: Styles.cafeItemHeight,
        width: tileWidth,
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
        decoration: BoxDecoration(
            image: DecorationImage(
              image: CachedNetworkImageProvider(pictureUrl),
              fit: BoxFit.cover,
            ),
            border: Border.all(
              color: Styles.primary,
              width: 1.0,
            ),
            borderRadius: Styles.mainBorderRadius),
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
                      fontFamily: Styles.fontFamilyNormal, color: Styles.white),
                )
              ],
            )));
  }

  Widget buildItems() {
    List<Widget> rows = [];
    for (int i = 0; i < widget.items.length; i += 2) {
      rows.add(Row(
        children: [
          buildTile(
              name: widget.items[i].name,
              price: widget.items[i].price,
              pictureUrl: widget.items[i].pictureUrl),
          const Spacer(),
          i + 1 < widget.items.length
              ? buildTile(
                  name: widget.items[i + 1].name,
                  price: widget.items[i + 1].price,
                  pictureUrl: widget.items[i + 1].pictureUrl)
              : Container(),
        ],
      ));
      rows.add(const SizedBox(height: 10.0));
    }
    return Column(children: rows);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Styles.white,
            borderRadius: Styles.mainBorderRadius,
            boxShadow: Styles.normalBoxShadow),
        padding: const EdgeInsets.all(Styles.mainInsidePadding),
        width: getWidth(context),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(widget.title, style: Styles.normalMainText),
            const SizedBox(height: Styles.mainSpacing),
            buildItems(),
          ],
        ));
  }
}
