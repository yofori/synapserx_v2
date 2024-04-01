import 'package:freezed_annotation/freezed_annotation.dart';

part 'adimages.freezed.dart';
part 'adimages.g.dart';

@freezed
class ADImages with _$ADImages {
  factory ADImages({
    @JsonKey(name: '_id') required String id,
    String? description,
    String? urlToImage,
    String? url,
    String? title,
    String? status,
    String? content,
    String? createdAt,
    String? updatedAt,
  }) = _ADImages;
  factory ADImages.fromJson(Map<String, dynamic> json) =>
      _$ADImagesFromJson(json);
}
