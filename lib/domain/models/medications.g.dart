// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medications.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MedicationsImpl _$$MedicationsImplFromJson(Map<String, dynamic> json) =>
    _$MedicationsImpl(
      drugCode: json['drugCode'] as String,
      drugName: json['drugName'] as String?,
      drugGenericName: json['drugGenericName'] as String?,
      dose: json['dose'] as String?,
      dosageUnits: json['dosageUnits'] as String?,
      dosageRegimen: json['dosageRegimen'] as String?,
      duration: json['duration'] as String?,
      durationUnits: json['durationUnits'] as String?,
      status: json['status'] as String?,
      dispenseAsWritten: json['dispenseAsWritten'] as bool?,
      allowRefills: json['allowRefills'] as bool?,
      maxRefillsAllowed: (json['maxRefillsAllowed'] as num?)?.toInt(),
      sId: json['_id'] as String?,
      directionOfUse: json['directionOfUse'] as String?,
      dosageAllowedUnits: (json['dosageAllowedUnits'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$MedicationsImplToJson(_$MedicationsImpl instance) =>
    <String, dynamic>{
      'drugCode': instance.drugCode,
      'drugName': instance.drugName,
      'drugGenericName': instance.drugGenericName,
      'dose': instance.dose,
      'dosageUnits': instance.dosageUnits,
      'dosageRegimen': instance.dosageRegimen,
      'duration': instance.duration,
      'durationUnits': instance.durationUnits,
      'status': instance.status,
      'dispenseAsWritten': instance.dispenseAsWritten,
      'allowRefills': instance.allowRefills,
      'maxRefillsAllowed': instance.maxRefillsAllowed,
      '_id': instance.sId,
      'directionOfUse': instance.directionOfUse,
      'dosageAllowedUnits': instance.dosageAllowedUnits,
    };
