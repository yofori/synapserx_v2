// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserInfoImpl _$$UserInfoImplFromJson(Map<String, dynamic> json) =>
    _$UserInfoImpl(
      email: json['email'] as String?,
      prescriberMDCRegNo: json['prescriberMDCRegNo'] as String?,
      title: json['title'] as String?,
      surname: json['surname'] as String?,
      firstname: json['firstname'] as String?,
      countryCode: json['countryCode'] as String?,
      telephoneNo: json['telephoneNo'] as String?,
      specialty: (json['specialty'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      signature: json['signature'],
      prescriberInstitutions: json['prescriberInstitutions'] as List<dynamic>?,
    );

Map<String, dynamic> _$$UserInfoImplToJson(_$UserInfoImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'prescriberMDCRegNo': instance.prescriberMDCRegNo,
      'title': instance.title,
      'surname': instance.surname,
      'firstname': instance.firstname,
      'countryCode': instance.countryCode,
      'telephoneNo': instance.telephoneNo,
      'specialty': instance.specialty,
      'signature': instance.signature,
      'prescriberInstitutions': instance.prescriberInstitutions,
    };
