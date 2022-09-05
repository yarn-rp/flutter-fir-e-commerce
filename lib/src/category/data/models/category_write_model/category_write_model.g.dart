// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_write_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoryWriteModel _$CategoryWriteModelFromJson(Map<String, dynamic> json) =>
    CategoryWriteModel(
      colorHex: json['colorHex'] as String,
      name: json['name'] as String,
      imageUrl: json['imageUrl'] as String,
    );

Map<String, dynamic> _$CategoryWriteModelToJson(CategoryWriteModel instance) =>
    <String, dynamic>{
      'colorHex': instance.colorHex,
      'imageUrl': instance.imageUrl,
      'name': instance.name,
    };
