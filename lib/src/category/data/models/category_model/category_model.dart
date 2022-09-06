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

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);

  factory CategoryModel.fromFirestore(
    DocumentSnapshot<Map<String, dynamic>> snapshot,
    SnapshotOptions? options,
  ) {
    final data = snapshot.data() ?? <String, dynamic>{};
    return CategoryModel.fromJson(data);
  }
  @JsonKey(name: 'color')
  final String colorHex;

  final String id;
  final String imageUrl;
  final String name;

  Map<String, dynamic> toJson() => _$CategoryModelToJson(this);
}

Category modelToEntity(CategoryModel categoryReadModel) => Category(
      color: HexColor.fromHex(categoryReadModel.colorHex)!,
      id: categoryReadModel.id,
      name: categoryReadModel.name,
      imageUrl: categoryReadModel.imageUrl,
      slug: categoryReadModel.name,
    );
