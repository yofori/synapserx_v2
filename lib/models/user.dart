import 'package:json_annotation/json_annotation.dart';

import 'useraccounts.dart';

part 'user.g.dart';

@JsonSerializable(explicitToJson: true)
class User {
  User({
    required this.id,
    required this.username,
    required this.email,
    required this.surname,
    required this.firstname,
    required this.prescriberMDCRegNo,
    required this.telephoneNo,
    this.countryCode,
    this.title,
    required this.role,
    required this.password,
    this.useraccounts,
    this.specialty,
    this.signature,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);

  @JsonKey(name: '_id')
  String id;
  String username;
  String email;
  String surname;
  String firstname;
  String prescriberMDCRegNo;
  String? countryCode;
  String telephoneNo;
  String? title;
  String role;
  String password;
  List<UserAccount>? useraccounts;
  List<String>? specialty;
  String? signature;
}
