import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_fir_e_commerce/core/widgets/adaptive_buttons/adaptive_button.dart';
import 'package:flutter_fir_e_commerce/injection_container/config_dependencies.dart';
import 'package:flutter_fir_e_commerce/src/images/presenter/get_image.dart';
import 'package:flutter_fir_e_commerce/src/images/repository/image_repository.dart';
import 'package:image_picker/image_picker.dart';

class ImageSelector extends StatefulWidget {
  const ImageSelector({Key? key}) : super(key: key);

  @override
  State<ImageSelector> createState() => _ImageSelectorState();
}

class _ImageSelectorState extends State<ImageSelector> {
  File? imageFile;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AdaptiveButton(
          onPressed: () async {
            final v = await getGeneralImage(context, ImageSource.gallery);
            setState(() {
              imageFile = v;
            });
          },
          child: imageFile != null
              ? Image.file(imageFile!)
              : Text(
                  'Select image',
                ),
        ),
        CupertinoButton(
          color: Colors.red,
          child: Text('Upload image'),
          onPressed: () async {
            final _result = await sl<ImageRepository>().uploadImage(imageFile!);
            _result.fold(
              (l) => ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Error $l'),
                ),
              ),
              (r) => ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Url de descarga: $r'),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
