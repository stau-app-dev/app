import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:staugustinechsnewapp/models/shared/failure/failure.dart';
import 'package:staugustinechsnewapp/models/shared/success/success.dart';
import 'package:staugustinechsnewapp/providers/image_upload/image_upload_api.dart';

@lazySingleton
class ImageUploadRepository {
  ImageUploadRepository();

  static Future<Either<Failure, Success>> uploadImageFile(
      {required File picture,
      required String path,
      required String fileName}) async {
    return await ImageUploadApi.uploadImageFile(
      picture: picture,
      path: path,
      fileName: fileName,
    );
  }
}
