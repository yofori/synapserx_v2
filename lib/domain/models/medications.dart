import 'package:freezed_annotation/freezed_annotation.dart';
part 'medications.g.dart';
part 'medications.freezed.dart';

@freezed
class Medications with _$Medications {
  factory Medications({
    required String drugCode,
    String? drugName,
    String? drugGenericName,
    String? dose,
    String? dosageUnits,
    String? dosageRegimen,
    String? duration,
    String? durationUnits,
    String? status,
    bool? dispenseAsWritten,
    bool? allowRefills,
    int? maxRefillsAllowed,
    @JsonKey(name: '_id') String? sId,
    String? directionOfUse,
    List<String>? dosageAllowedUnits,
  }) = _Medications;

  factory Medications.fromJson(Map<String, dynamic> json) =>
      _$MedicationsFromJson(json);
}
