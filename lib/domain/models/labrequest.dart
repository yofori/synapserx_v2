import 'package:freezed_annotation/freezed_annotation.dart';
import 'requestedlabs.dart';

part 'labrequest.g.dart';
part 'labrequest.freezed.dart';

@freezed
class LabRequest with _$LabRequest {
  factory LabRequest({
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
    String? status,
    List<String>? diagnoses,
    List<RequestedLabs>? requests,
    String? createdAt,
    String? updatedAt,
  }) = _LabReequest;

  factory LabRequest.fromJson(Map<String, dynamic> json) =>
      _$LabRequestFromJson(json);
}
