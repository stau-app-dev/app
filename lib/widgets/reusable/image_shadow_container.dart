import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:staugustinechsnewapp/styles.dart';

/// {@template image_shadow_container}
/// Reusable widget for displaying a container with a image with a shadow on it.
/// {@endtemplate}
class ImageShadowContainer extends StatelessWidget {
  /// The url of the image to display inside the container.
  final String pictureUrl;

  /// The height of the container.
  /// Defaults to [pictureContainerDimensions].
  final double? height;

  /// The width of the container.
  /// Defaults to [pictureContainerDimensions].
  final double? width;

  /// {@macro image_shadow_container}
  const ImageShadowContainer(
      {Key? key, required this.pictureUrl, this.height, this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Map<String, double> pictureContainerDimensions =
        Styles.pictureContainerDimensions(
            context: context,
            width: width ?? MediaQuery.of(context).size.width);
    double finalHeight = height ?? pictureContainerDimensions['height']!;
    double finalWidth = width ?? pictureContainerDimensions['width']!;

    return Stack(children: [
      Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: CachedNetworkImageProvider(pictureUrl),
            fit: BoxFit.cover,
          ),
          borderRadius: Styles.mainBorderRadius,
        ),
        height: finalHeight,
        width: finalWidth,
      ),
      Container(
          height: finalHeight,
          width: finalWidth,
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
