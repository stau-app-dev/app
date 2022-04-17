import 'package:flutter/material.dart';
import 'package:staugustinechsnewapp/models/socials/club_quick_access_item/club_quick_access_item.dart';
import 'package:staugustinechsnewapp/theme/styles.dart';
import 'package:staugustinechsnewapp/widgets/reusable/basic_container.dart';
import 'package:staugustinechsnewapp/widgets/reusable/image_shadow_container.dart';
import 'package:staugustinechsnewapp/widgets/reusable/rounded_button.dart';

class ClubsList extends StatelessWidget {
  final String title;
  final List<ClubQuickAccessItem> items;
  final bool showJoinClubsButton;
  final Function(String) onPressClub;
  final Function()? onPressJoinClubsButton;

  const ClubsList(
      {Key? key,
      required this.title,
      required this.items,
      required this.onPressClub,
      this.showJoinClubsButton = true,
      this.onPressJoinClubsButton})
      : super(key: key);

  Widget buildTile(
      {required String clubId,
      required String name,
      required double tileWidth,
      required double tileHeight}) {
    return Container(
        height: tileHeight,
        width: tileWidth,
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
        child: Container(
          alignment: Alignment.bottomLeft,
          child: Text(
            name,
            textAlign: TextAlign.start,
            style: const TextStyle(
                fontFamily: Styles.fontFamilyNormal,
                fontWeight: FontWeight.bold,
                color: Styles.white),
          ),
        ));
  }

  Widget buildTileWrapper(
      {required BuildContext context,
      required String clubId,
      required String name,
      required String pictureUrl}) {
    double padding = (Styles.mainHorizontalPadding * 2);
    double tileWidth = MediaQuery.of(context).size.width - padding;

    Map<String, double> pictureContainerDimensions =
        Styles.pictureContainerDimensions(context: context, width: tileWidth);
    double tileHeight = pictureContainerDimensions['height']!;
    tileWidth = pictureContainerDimensions['width']!;

    return Stack(children: [
      ImageShadowContainer(
          pictureUrl: pictureUrl, height: tileHeight, width: tileWidth),
      Material(
          color: Styles.transparent,
          child: InkWell(
              borderRadius: Styles.mainBorderRadius,
              splashColor: Styles.primary,
              onTap: () => onPressClub(clubId),
              child: buildTile(
                  clubId: clubId,
                  name: name,
                  tileWidth: tileWidth,
                  tileHeight: tileHeight)))
    ]);
  }

  Widget buildItems(BuildContext context) {
    List<Widget> rows = [];
    for (int i = 0; i < items.length; i += 1) {
      rows.add(
        buildTileWrapper(
            context: context,
            clubId: items[i].id,
            name: items[i].name,
            pictureUrl: items[i].pictureUrl),
      );
      rows.add(const SizedBox(height: 10.0));
    }
    return SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(children: rows));
  }

  @override
  Widget build(BuildContext context) {
    return BasicContainer(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: Theme.of(context).textTheme.headline6),
        const SizedBox(height: Styles.mainSpacing),
        buildItems(context),
        if (showJoinClubsButton) ...[
          const SizedBox(height: Styles.mainSpacing),
          RoundedButton(
            text: 'Join a Club',
            onPressed: onPressJoinClubsButton ?? () {},
          ),
        ]
      ],
    ));
  }
}
