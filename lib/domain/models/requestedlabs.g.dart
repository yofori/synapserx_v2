// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'requestedlabs.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestedLabsImpl _$$RequestedLabsImplFromJson(Map<String, dynamic> json) =>
    _$RequestedLabsImpl(
      orderedTestCode: json['orderedTestCode'] as String,
      orderedTestDescription: json['orderedTestDescription'] as String,
      diagnosticService: json['diagnosticService'] as String,
    );

Map<String, dynamic> _$$RequestedLabsImplToJson(_$RequestedLabsImpl instance) =>
    <String, dynamic>{
      'orderedTestCode': instance.orderedTestCode,
      'orderedTestDescription': instance.orderedTestDescription,
      'diagnosticService': instance.diagnosticService,
    };
