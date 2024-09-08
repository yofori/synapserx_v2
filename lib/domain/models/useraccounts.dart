import 'package:freezed_annotation/freezed_annotation.dart';
part 'useraccounts.g.dart';
part 'useraccounts.freezed.dart';

@freezed
class UserAccount with _$UserAccount {
  @JsonSerializable(explicitToJson: true)
  const factory UserAccount(
      {required String institutionName,
      String? institutionAddress,
      String? institutionTelephone,
      String? institutionEmail,
      @Default(false) bool defaultAccount,
      @JsonKey(name: '_id') String? id}) = _UserAccount;

  factory UserAccount.fromJson(Map<String, dynamic> json) =>
      _$UserAccountFromJson(json);
}
