import 'package:equatable/equatable.dart';
import 'package:flutter_fir_e_commerce/src/category/domain/entities/category.dart';
import 'package:flutter_fir_e_commerce/src/search/domain/entities/search_entity.dart';

class Product extends SearchItem with EquatableMixin {
  Product({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.category,
    required this.isFavorite,
  }) : super(name);

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

  @override
  // TODO: implement props
  List<Object?> get props => [id];
}
