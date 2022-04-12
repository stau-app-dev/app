// From: https://oflutter.com/flutter-pick-an-image-from-gallery-and-crop-it/

import 'dart:io';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

/// This class contains all general utility functions
class ImageUtils {
  ImageUtils._();

  /// Open image gallery and pick an image
  static Future<XFile?> pickImageFromGallery() async {
    return await ImagePicker().pickImage(source: ImageSource.gallery);
  }

  /// Pick Image From Gallery and return a File
  static Future<File?> cropSelectedImage(
      {required String filePath,
      required double ratioX,
      required double ratioY}) async {
    return await ImageCropper().cropImage(
      sourcePath: filePath,
      aspectRatio: CropAspectRatio(ratioX: ratioX, ratioY: ratioY),
      iosUiSettings: IOSUiSettings(
        title: 'Crop Image to ($ratioX:$ratioY) Ratio',
        aspectRatioLockEnabled: true,
        aspectRatioPickerButtonHidden: true,
      ),
    );
  }
}
