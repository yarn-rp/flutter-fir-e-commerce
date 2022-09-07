import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_model.g.dart';

@JsonSerializable()
class ProductModel {
  ProductModel({
    this.id,
    required this.name,
    required this.imageUrl,
    required this.categoryId,
    required this.isFavorite,
  });

  factory ProductModel.fromFirestore(
    DocumentSnapshot<Map<String, dynamic>> snapshot,
    SnapshotOptions? options,
  ) {
    final data = snapshot.data() ?? <String, dynamic>{};
    return ProductModel.fromJson(data);
  }

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);

  final String categoryId;
  final String? id;
  final String imageUrl;
  final bool isFavorite;
  final String name;

  Map<String, dynamic> toJson() => _$ProductModelToJson(this);
}
