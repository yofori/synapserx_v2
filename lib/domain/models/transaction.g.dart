// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransactionImpl _$$TransactionImplFromJson(Map<String, dynamic> json) =>
    _$TransactionImpl(
      id: json['_id'] as String,
      prescriberuid: json['prescriberuid'] as String,
      patientuid: json['patientuid'] as String,
      status: json['status'] as String,
      patientFullname: json['patientFullname'] as String,
      prescriberFullname: json['prescriberFullname'] as String,
      transactionType: json['transactionType'] as String,
      transactionAction: json['transactionAction'] as String,
      transactionRef: json['transactionRef'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$TransactionImplToJson(_$TransactionImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'prescriberuid': instance.prescriberuid,
      'patientuid': instance.patientuid,
      'status': instance.status,
      'patientFullname': instance.patientFullname,
      'prescriberFullname': instance.prescriberFullname,
      'transactionType': instance.transactionType,
      'transactionAction': instance.transactionAction,
      'transactionRef': instance.transactionRef,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
