import 'package:flutter_fir_e_commerce/src/category/domain/entities/category.dart';

class Product {
  Product({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.category,
    required this.isFavorite,
  });

  final String id;
  final String name;
  final String imageUrl;
  final Category category;
  final bool isFavorite;

  Product copyWith({
    String? name,
    String? imageUrl,
    Category? category,
    bool? isFavorite,
  }) {
    return Product(
      id: id,
      name: name ?? this.name,
      imageUrl: imageUrl ?? this.imageUrl,
      category: category ?? this.category,
      isFavorite: isFavorite ?? this.isFavorite,
    );
  }
}