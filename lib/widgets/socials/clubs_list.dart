import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:staugustinechsnewapp/models/socials/club/club.dart';
import 'package:staugustinechsnewapp/styles.dart';
import 'package:staugustinechsnewapp/widgets/reusable/rounded_button.dart';

class ClubsList extends StatefulWidget {
  final String title;
  final List<Club> items;
  final bool showJoinButton;
  final Function()? onJoinClub;

  const ClubsList(
      {Key? key,
      required this.title,
      required this.items,
      required this.showJoinButton,
      this.onJoinClub})
      : super(key: key);

  @override
  State<ClubsList> createState() => _ClubsListState();
}

class _ClubsListState extends State<ClubsList> {
  double getWidth(BuildContext context) => MediaQuery.of(context).size.width;

  Widget buildTile({required String name, required String pictureUrl}) {
    double tileWidth = getWidth(context) - (Styles.mainOutsidePadding * 2);

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
                if (widget.showJoinButton)
                  ClipOval(
                    child: Material(
                      color: Styles.white, // Button color
                      child: InkWell(
                        splashColor: Styles.primary, // Splash color
                        onTap: () {},
                        child: const SizedBox(
                            width: 30,
                            height: 30,
                            child: Icon(
                              Icons.add_rounded,
                              color: Styles.primary,
                            )),
                      ),
                    ),
                  )
              ],
            )));
  }

  Widget buildItems() {
    List<Widget> rows = [];
    for (int i = 0; i < widget.items.length; i += 1) {
      rows.add(
        buildTile(
            name: widget.items[i].name, pictureUrl: widget.items[i].pictureUrl),
      );
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
            if (!widget.showJoinButton) ...[
              const SizedBox(height: Styles.mainSpacing),
              RoundedButton(
                text: 'Join a Club',
                onPressed: widget.onJoinClub ?? () {},
              ),
            ]
          ],
        ));
  }
}
