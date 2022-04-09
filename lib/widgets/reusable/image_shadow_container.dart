import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:staugustinechsnewapp/styles.dart';

class ImageShadowContainer extends StatelessWidget {
  final String pictureUrl;
  final double? height;
  final double? width;

  const ImageShadowContainer(
      {Key? key,
      required this.pictureUrl,
      this.height = Styles.pictureContainerHeight,
      this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: CachedNetworkImageProvider(pictureUrl),
            fit: BoxFit.cover,
          ),
          borderRadius: Styles.mainBorderRadius,
        ),
        height: height,
        width: width,
      ),
      Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
              borderRadius: Styles.mainBorderRadius,
              border: Border.all(
                color: Styles.primary,
                width: 1.0,
              ),
              color: Colors.white,
              gradient: LinearGradient(
                  begin: FractionalOffset.topCenter,
                  end: FractionalOffset.bottomCenter,
                  colors: [
                    Styles.transparent,
                    Styles.grey.withOpacity(0.1),
                    Styles.grey.withOpacity(0.5),
                  ],
                  stops: const [
                    0.3,
                    0.5,
                    1.0
                  ]))),
    ]);
  }
}
