// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'useraccounts.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserAccountImpl _$$UserAccountImplFromJson(Map<String, dynamic> json) =>
    _$UserAccountImpl(
      institutionName: json['institutionName'] as String,
      institutionAddress: json['institutionAddress'] as String?,
      institutionTelephone: json['institutionTelephone'] as String?,
      institutionEmail: json['institutionEmail'] as String?,
      defaultAccount: json['defaultAccount'] as bool? ?? false,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$UserAccountImplToJson(_$UserAccountImpl instance) =>
    <String, dynamic>{
      'institutionName': instance.institutionName,
      'institutionAddress': instance.institutionAddress,
      'institutionTelephone': instance.institutionTelephone,
      'institutionEmail': instance.institutionEmail,
      'defaultAccount': instance.defaultAccount,
      'id': instance.id,
    };
