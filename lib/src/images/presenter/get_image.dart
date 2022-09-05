import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

final _imagePicker = ImagePicker();
FutureOr<File?> getGeneralImage(
  BuildContext context,
  ImageSource source,
) async {
  final pickedFile = await _imagePicker.pickImage(
    source: source,
    preferredCameraDevice: CameraDevice.front,
  );
  if (pickedFile != null) {
    final _imgCropped = await cropImage(
      File(
        pickedFile.path,
      ),
    );
    if (_imgCropped != null) {
      return compressFile(_imgCropped);
    }
  }
}

Future<File?> compressFile(File file) async {
  final filePath = file.absolute.path;

  // Create output file path
  // eg:- "Volume/VM/abcd_out.jpeg"
  final lastIndex = filePath.lastIndexOf(RegExp(r'.jp'));
  final splited = filePath.substring(0, lastIndex);
  final outPath = '${splited}_out${filePath.substring(lastIndex)}';
  final result = await FlutterImageCompress.compressAndGetFile(
    file.absolute.path,
    outPath,
    // quality: 95,
  );
  if (result != null) {
    return result;
  }
}

FutureOr<File?> cropImage(File imageFile) async {
  final croppedFile = await ImageCropper().cropImage(
    sourcePath: imageFile.path,
    cropStyle: CropStyle.circle,
    aspectRatio: const CropAspectRatio(ratioX: 1, ratioY: 1),
    aspectRatioPresets: [
      CropAspectRatioPreset.square,
    ],
  );
  if (croppedFile != null) {
    return File(croppedFile.path);
  }
}
