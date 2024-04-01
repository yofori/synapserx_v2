// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prescription.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PrescriptionImpl _$$PrescriptionImplFromJson(Map<String, dynamic> json) =>
    _$PrescriptionImpl(
      sId: json['_id'] as String?,
      pxId: json['pxId'] as String,
      pxSurname: json['pxSurname'] as String,
      pxFirstname: json['pxFirstname'] as String,
      pxgender: json['pxgender'] as String,
      pxAge: json['pxAge'] as int?,
      pxDOB: json['pxDOB'] as String?,
      prescriberID: json['prescriberID'] as String?,
      prescriberMDCRegNo: json['prescriberMDCRegNo'] as String?,
      prescriberName: json['prescriberName'] as String?,
      prescriberSignature: json['prescriberSignature'] as String?,
      prescriberInstitution: json['prescriberInstitution'] as String?,
      prescriberInstitutionName: json['prescriberInstitutionName'] as String?,
      prescriberInstitutionAddress:
          json['prescriberInstitutionAddress'] as String?,
      prescriberInstitutionTelephone:
          json['prescriberInstitutionTelephone'] as String?,
      prescriberInstitutionEmail: json['prescriberInstitutionEmail'] as String?,
      refillRx: json['refillRx'] as bool?,
      isPxRegistered: json['isPxRegistered'] as bool?,
      status: json['status'] as String?,
      diagnoses: (json['diagnoses'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      medications: (json['medications'] as List<dynamic>?)
          ?.map((e) => Medications.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      iV: json['iV'] as int?,
    );

Map<String, dynamic> _$$PrescriptionImplToJson(_$PrescriptionImpl instance) =>
    <String, dynamic>{
      '_id': instance.sId,
      'pxId': instance.pxId,
      'pxSurname': instance.pxSurname,
      'pxFirstname': instance.pxFirstname,
      'pxgender': instance.pxgender,
      'pxAge': instance.pxAge,
      'pxDOB': instance.pxDOB,
      'prescriberID': instance.prescriberID,
      'prescriberMDCRegNo': instance.prescriberMDCRegNo,
      'prescriberName': instance.prescriberName,
      'prescriberSignature': instance.prescriberSignature,
      'prescriberInstitution': instance.prescriberInstitution,
      'prescriberInstitutionName': instance.prescriberInstitutionName,
      'prescriberInstitutionAddress': instance.prescriberInstitutionAddress,
      'prescriberInstitutionTelephone': instance.prescriberInstitutionTelephone,
      'prescriberInstitutionEmail': instance.prescriberInstitutionEmail,
      'refillRx': instance.refillRx,
      'isPxRegistered': instance.isPxRegistered,
      'status': instance.status,
      'diagnoses': instance.diagnoses,
      'medications': instance.medications,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'iV': instance.iV,
    };
