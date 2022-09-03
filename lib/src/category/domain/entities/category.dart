import 'dart:ui';

import 'package:flutter_fir_e_commerce/core/image/image.dart';

class Category {
  Category({
    required this.color,
    required this.id,
    required this.name,
    required this.image,
    required this.slug,
  });

  final Color color;
  final String id;
  final String name;
  final String slug;
  final ImageRepresentation image;
}
