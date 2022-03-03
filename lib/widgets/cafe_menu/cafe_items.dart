import 'package:flutter/material.dart';
import 'package:staugustinechsnewapp/styles.dart';

class CafeItems extends StatefulWidget {
  final String title;
  final List<Map<String, String>> items;
  const CafeItems({Key? key, required this.title, required this.items})
      : super(key: key);
  @override
  State<CafeItems> createState() => _CafeItemsState();
}

class _CafeItemsState extends State<CafeItems> {
  double getWidth(BuildContext context) => MediaQuery.of(context).size.width;

  Widget buildTile(String food, String price, String image) {
    double tileWidth =
        getWidth(context) * 0.43 - (Styles.mainOutsidePaddingValue);

    return Container(
        height: Styles.cafeItemHeight,
        width: tileWidth,
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(image),
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
                  food,
                  textAlign: TextAlign.start,
                  style: const TextStyle(
                      fontFamily: Styles.fontFamilyRegular,
                      fontWeight: FontWeight.bold,
                      color: Styles.white),
                )),
                Text(
                  "\$$price",
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontFamily: Styles.fontFamilyRegular,
                      color: Styles.white),
                )
              ],
            )));
  }

  Widget buildItems() {
    List<Widget> rows = [];
    for (int i = 0; i < widget.items.length; i += 2) {
      rows.add(Row(
        children: [
          buildTile(widget.items[i]["food"]!, widget.items[i]["price"]!,
              widget.items[i]["image"]!),
          const Spacer(),
          i + 1 < widget.items.length
              ? buildTile(widget.items[i + 1]["food"]!,
                  widget.items[i]["price"]!, widget.items[i + 1]["image"]!)
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
            boxShadow: Styles.regularBoxShadow),
        padding: const EdgeInsets.all(Styles.mainInsidePadding),
        width: getWidth(context),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(widget.title, style: Styles.regularMainText),
            const SizedBox(height: Styles.mainSpacing),
            buildItems(),
          ],
        ));
  }
}
