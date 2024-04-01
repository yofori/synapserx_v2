import 'package:freezed_annotation/freezed_annotation.dart';
import 'medications.dart';

part 'prescription.g.dart';
part 'prescription.freezed.dart';

@freezed
class Prescription with _$Prescription {
  factory Prescription({
    @JsonKey(name: '_id') String? sId,
    required String pxId,
    required String pxSurname,
    required String pxFirstname,
    required String pxgender,
    int? pxAge,
    String? pxDOB,
    String? prescriberID,
    String? prescriberMDCRegNo,
    String? prescriberName,
    String? prescriberSignature,
    String? prescriberInstitution,
    String? prescriberInstitutionName,
    String? prescriberInstitutionAddress,
    String? prescriberInstitutionTelephone,
    String? prescriberInstitutionEmail,
    bool? refillRx,
    bool? isPxRegistered,
    String? status,
    List<String>? diagnoses,
    List<Medications>? medications,
    String? createdAt,
    String? updatedAt,
    int? iV,
  }) = _Prescription;

  factory Prescription.fromJson(Map<String, dynamic> json) =>
      _$PrescriptionFromJson(json);
}
