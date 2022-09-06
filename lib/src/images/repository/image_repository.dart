import 'dart:developer';
import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_fir_e_commerce/core/error/failures.dart';
import 'package:flutter_fir_e_commerce/core/result_type/result_type.dart';
import 'package:flutter_fir_e_commerce/src/images/errors/image_exceptions.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:path/path.dart';

@singleton
class ImageRepository {
  const ImageRepository(this.storage);

  final FirebaseStorage storage;

  /// Receives a file with an image and returns the downloadUrl of that file in
  /// firebase storage
  Future<Result<String>> uploadImage(File imgFile) async {
    log('Is storage there? ${storage.bucket}');
    try {
      return storage
          .ref()
          .child('images/${basename(imgFile.path)}')
          .putFile(imgFile)
          .then((p0) async {
        try {
          final downloadUrl = await p0.ref.getDownloadURL();
          return right(downloadUrl);
        } catch (e) {
          log('Error in donwload url $e');
          return left(
            CouldNotTakeValidUrlFailure(
              message: e.toString(),
            ),
          );
        }
      });
    } catch (e) {
      log('Error in general  $e');
      return left(
        UnexpectedFailure(
          message: e.toString(),
        ),
      );
    }
  }
}
