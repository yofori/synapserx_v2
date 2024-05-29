import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_info.freezed.dart';
part 'user_info.g.dart';

@freezed
class UserInfo with _$UserInfo {
  @JsonSerializable(explicitToJson: true)
  factory UserInfo({
    @JsonKey(name: '_id') String? id,
    String? username,
    String? password,
    String? email,
    String? role,
    String? status,
    String? confirmationCode,
    @JsonKey(name: 'prescriberMDCRegNo') String? prescriberMDCRegNo,
    String? title,
    String? surname,
    String? firstname,
    String? countryCode,
    String? telephoneNo,
    dynamic specialty,
    dynamic signature,
    DateTime? lastLogin,
    List<dynamic>? prescriberInstitutions,
    DateTime? createdAt,
    DateTime? updatedAt,
    @JsonKey(name: '__v') int? v,
  }) = _UserInfo;

  factory UserInfo.fromJson(Map<String, dynamic> json) =>
      _$UserInfoFromJson(json);
}
