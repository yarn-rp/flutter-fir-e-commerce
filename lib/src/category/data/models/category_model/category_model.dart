import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_fir_e_commerce/core/extensions/color.dart';
import 'package:flutter_fir_e_commerce/src/category/domain/entities/category.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_model.g.dart';

@JsonSerializable()
class CategoryModel {
  CategoryModel({
    String? id,
    required this.colorHex,
    required this.name,
    required this.imageUrl,
  })
  // We wanted to make the category name unique, so we match it to the ID
  : id = id ?? name;

  factory CategoryModel.fromEntity(Category entity) => CategoryModel(
        colorHex: entity.color.toHex(),
        name: entity.name,
        imageUrl: entity.imageUrl,
      );

  factory CategoryModel.fromFirestore(
    DocumentSnapshot<Map<String, dynamic>> snapshot,
    SnapshotOptions? options,
  ) {
    final data = snapshot.data() ?? <String, dynamic>{};
    return CategoryModel.fromJson(data);
  }

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);

  @JsonKey(name: 'color')
  final String colorHex;

  final String id;
  final String imageUrl;
  final String name;

  Map<String, dynamic> toJson() => _$CategoryModelToJson(this);

  Category get toEntity => Category(
        color: HexColor.fromHex(colorHex)!,
        id: id,
        name: name,
        imageUrl: imageUrl,
        slug: name,
      );
}
