import 'dart:ui';

class Category {
  Category({
    required this.color,
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.slug,
  });

  final Color color;
  final String id;
  final String name;
  final String slug;
  final String imageUrl;
}
