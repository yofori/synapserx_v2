import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'useraccounts.dart';
part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    required String id,
    required String username,
    required String email,
    required String surname,
    required String firstname,
    required String prescriberMDCRegNo,
    required String telephoneNo,
    String? countryCode,
    String? title,
    required String role,
    String? password,
    List<UserAccount>? useraccounts,
    List<String>? specialty,
    String? signature,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
