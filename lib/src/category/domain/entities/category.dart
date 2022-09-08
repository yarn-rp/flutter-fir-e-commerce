import 'dart:ui';

import 'package:equatable/equatable.dart';
import 'package:flutter_fir_e_commerce/src/search/domain/entities/search_entity.dart';

class Category extends SearchItem with EquatableMixin {
  Category({
    required this.color,
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.slug,
  }) : super(name);

  final Color color;
  final String id;
  final String name;
  final String slug;
  final String imageUrl;

  @override
  // TODO: implement props
  List<Object?> get props => [id];
}
