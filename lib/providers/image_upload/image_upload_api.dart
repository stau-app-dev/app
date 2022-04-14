import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:injectable/injectable.dart';
import 'package:staugustinechsnewapp/models/shared/failure/failure.dart';
import 'package:staugustinechsnewapp/models/shared/success/success.dart';
import 'package:staugustinechsnewapp/providers/image_upload/consts.dart';

@Injectable()
class ImageUploadApi {
  static Future<Either<Failure, Success>> uploadImageFile(
      {required File picture,
      required String path,
      required String fileName}) async {
    try {
      final destination = '$path/$fileName';
      final ref = firebase_storage.FirebaseStorage.instance.ref(destination);
      await ref.putFile(picture);
      return const Right(Success(message: successUploadingImage));
    } catch (e) {
      return const Left(Failure(message: errorUploadingImageFile));
    }
  }
}
