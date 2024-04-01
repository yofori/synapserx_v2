// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserInfoImpl _$$UserInfoImplFromJson(Map<String, dynamic> json) =>
    _$UserInfoImpl(
      id: json['_id'] as String?,
      username: json['username'] as String?,
      password: json['password'] as String?,
      email: json['email'] as String?,
      role: json['role'] as String?,
      status: json['status'] as String?,
      confirmationCode: json['confirmationCode'] as String?,
      prescriberMdcRegNo: json['prescriberMDCRegNo'] as String?,
      title: json['title'] as String?,
      surname: json['surname'] as String?,
      firstname: json['firstname'] as String?,
      countryCode: json['countryCode'] as String?,
      telephoneNo: json['telephoneNo'] as String?,
      specialty: json['specialty'],
      signature: json['signature'],
      lastLogin: json['lastLogin'] == null
          ? null
          : DateTime.parse(json['lastLogin'] as String),
      prescriberInstitutions: json['prescriberInstitutions'] as List<dynamic>?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      v: json['__v'] as int?,
    );

Map<String, dynamic> _$$UserInfoImplToJson(_$UserInfoImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'username': instance.username,
      'password': instance.password,
      'email': instance.email,
      'role': instance.role,
      'status': instance.status,
      'confirmationCode': instance.confirmationCode,
      'prescriberMDCRegNo': instance.prescriberMdcRegNo,
      'title': instance.title,
      'surname': instance.surname,
      'firstname': instance.firstname,
      'countryCode': instance.countryCode,
      'telephoneNo': instance.telephoneNo,
      'specialty': instance.specialty,
      'signature': instance.signature,
      'lastLogin': instance.lastLogin?.toIso8601String(),
      'prescriberInstitutions': instance.prescriberInstitutions,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      '__v': instance.v,
    };
