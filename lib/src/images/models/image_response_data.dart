import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_response_data.g.dart';

@JsonSerializable()
class ImageResponseData {
  final String putUrl;
  final String readUrl;

  factory ImageResponseData.fromJson(Map<String, dynamic> json) =>
      _$ImageResponseDataFromJson(json);

  Map<String, dynamic> toJson() => _$ImageResponseDataToJson(this);

  ImageResponseData(this.putUrl, this.readUrl);

  @override
  String toString() => 'ImageResponseData(putUrl: $putUrl, readUrl: $readUrl)';
}
