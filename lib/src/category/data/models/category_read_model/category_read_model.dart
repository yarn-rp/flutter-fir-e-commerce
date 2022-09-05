import 'package:flutter_fir_e_commerce/core/extensions/color.dart';
import 'package:flutter_fir_e_commerce/src/category/domain/entities/category.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_read_model.g.dart';

@JsonSerializable()
class CategoryReadModel {
  CategoryReadModel({
    required this.id,
    required this.isFavorite,
    required this.colorHex,
    required this.name,
    required this.imageUrl,
  });

  factory CategoryReadModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryReadModelFromJson(json);

  final String colorHex;
  final String id;
  final String imageUrl;
  final bool isFavorite;
  final String name;

  Map<String, dynamic> toJson() => _$CategoryReadModelToJson(this);
}

Category modelToEntity(CategoryReadModel categoryReadModel) => Category(
      color: HexColor.fromHex(categoryReadModel.colorHex)!,
      id: categoryReadModel.id,
      name: categoryReadModel.name,
      imageUrl: categoryReadModel.imageUrl,
      slug: categoryReadModel.name,
    );
