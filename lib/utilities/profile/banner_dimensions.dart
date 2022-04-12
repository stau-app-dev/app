import 'package:flutter/material.dart';

const bannerRatioXY = 1.8;

Map<String, double> getBannerDimensions(
    {required BuildContext context, required double width, double? ratioXY}) {
  double bannerRatioX = bannerRatioXY;
  double bannerRatioY = 1.0;

  bannerRatioX = ratioXY ?? bannerRatioX;

  double bannerWidth = width;
  double bannerHeight = bannerWidth / bannerRatioX * bannerRatioY;

  double maxBannerWidth = 600.0;
  double maxBannerHeight = 350.0;

  if (bannerWidth > maxBannerWidth) {
    bannerWidth = maxBannerWidth;
    bannerHeight = bannerWidth / bannerRatioX * bannerRatioY;
  } else if (bannerHeight > maxBannerHeight) {
    bannerHeight = maxBannerHeight;
    bannerWidth = bannerHeight / bannerRatioY * bannerRatioX;
  }

  return {
    'width': bannerWidth,
    'height': bannerHeight,
  };
}
