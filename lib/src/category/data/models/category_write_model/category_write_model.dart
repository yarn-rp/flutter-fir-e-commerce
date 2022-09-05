import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_write_model.g.dart';

@JsonSerializable()
class CategoryWriteModel {
  CategoryWriteModel({
    required this.colorHex,
    required this.name,
    required this.imageUrl,
  });

  factory CategoryWriteModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryWriteModelFromJson(json);

  final String colorHex;
  final String imageUrl;
  final String name;

  Map<String, dynamic> toJson() => _$CategoryWriteModelToJson(this);
}
