import 'dart:developer';
import 'dart:io';

import 'package:flutter_fir_e_commerce/core/result_type/result_type.dart';

abstract class ImageRepository {
  ImageRepository();

  Future<Result<String>> uploadImage(File imgFile);
}
