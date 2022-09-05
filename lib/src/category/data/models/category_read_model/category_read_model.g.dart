// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_read_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoryReadModel _$CategoryReadModelFromJson(Map<String, dynamic> json) =>
    CategoryReadModel(
      id: json['id'] as String,
      isFavorite: json['isFavorite'] as bool,
      colorHex: json['colorHex'] as String,
      name: json['name'] as String,
      imageUrl: json['imageUrl'] as String,
    );

Map<String, dynamic> _$CategoryReadModelToJson(CategoryReadModel instance) =>
    <String, dynamic>{
      'colorHex': instance.colorHex,
      'id': instance.id,
      'imageUrl': instance.imageUrl,
      'isFavorite': instance.isFavorite,
      'name': instance.name,
    };
