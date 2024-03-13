// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      id: json['_id'] as String,
      username: json['username'] as String,
      email: json['email'] as String,
      surname: json['surname'] as String,
      firstname: json['firstname'] as String,
      prescriberMDCRegNo: json['prescriberMDCRegNo'] as String,
      telephoneNo: json['telephoneNo'] as String,
      countryCode: json['countryCode'] as String?,
      title: json['title'] as String?,
      role: json['role'] as String,
      password: json['password'] as String,
      useraccounts: (json['useraccounts'] as List<dynamic>?)
          ?.map((e) => UserAccount.fromJson(e as Map<String, dynamic>))
          .toList(),
      specialty: (json['specialty'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      signature: json['signature'] as String?,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      '_id': instance.id,
      'username': instance.username,
      'email': instance.email,
      'surname': instance.surname,
      'firstname': instance.firstname,
      'prescriberMDCRegNo': instance.prescriberMDCRegNo,
      'countryCode': instance.countryCode,
      'telephoneNo': instance.telephoneNo,
      'title': instance.title,
      'role': instance.role,
      'password': instance.password,
      'useraccounts': instance.useraccounts?.map((e) => e.toJson()).toList(),
      'specialty': instance.specialty,
      'signature': instance.signature,
    };
