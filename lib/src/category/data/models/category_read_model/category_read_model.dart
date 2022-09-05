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
  final String imageUrl;
  final String name;
  final String id;
  final bool isFavorite;

  Map<String, dynamic> toJson() => _$CategoryReadModelToJson(this);
}
