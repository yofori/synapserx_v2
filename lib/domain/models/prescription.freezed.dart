// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'prescription.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Prescription _$PrescriptionFromJson(Map<String, dynamic> json) {
  return _Prescription.fromJson(json);
}

/// @nodoc
mixin _$Prescription {
  @JsonKey(name: '_id')
  String? get sId => throw _privateConstructorUsedError;
  String get pxId => throw _privateConstructorUsedError;
  String get pxSurname => throw _privateConstructorUsedError;
  String get pxFirstname => throw _privateConstructorUsedError;
  String get pxgender => throw _privateConstructorUsedError;
  int? get pxAge => throw _privateConstructorUsedError;
  String? get pxDOB => throw _privateConstructorUsedError;
  String? get prescriberID => throw _privateConstructorUsedError;
  String? get prescriberMDCRegNo => throw _privateConstructorUsedError;
  String? get prescriberName => throw _privateConstructorUsedError;
  String? get prescriberSignature => throw _privateConstructorUsedError;
  String? get prescriberInstitution => throw _privateConstructorUsedError;
  String? get prescriberInstitutionName => throw _privateConstructorUsedError;
  String? get prescriberInstitutionAddress =>
      throw _privateConstructorUsedError;
  String? get prescriberInstitutionTelephone =>
      throw _privateConstructorUsedError;
  String? get prescriberInstitutionEmail => throw _privateConstructorUsedError;
  bool? get refillRx => throw _privateConstructorUsedError;
  bool? get isPxRegistered => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  List<String>? get diagnoses => throw _privateConstructorUsedError;
  List<Medications>? get medications => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;
  int? get iV => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PrescriptionCopyWith<Prescription> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrescriptionCopyWith<$Res> {
  factory $PrescriptionCopyWith(
          Prescription value, $Res Function(Prescription) then) =
      _$PrescriptionCopyWithImpl<$Res, Prescription>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? sId,
      String pxId,
      String pxSurname,
      String pxFirstname,
      String pxgender,
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
      int? iV});
}

/// @nodoc
class _$PrescriptionCopyWithImpl<$Res, $Val extends Prescription>
    implements $PrescriptionCopyWith<$Res> {
  _$PrescriptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sId = freezed,
    Object? pxId = null,
    Object? pxSurname = null,
    Object? pxFirstname = null,
    Object? pxgender = null,
    Object? pxAge = freezed,
    Object? pxDOB = freezed,
    Object? prescriberID = freezed,
    Object? prescriberMDCRegNo = freezed,
    Object? prescriberName = freezed,
    Object? prescriberSignature = freezed,
    Object? prescriberInstitution = freezed,
    Object? prescriberInstitutionName = freezed,
    Object? prescriberInstitutionAddress = freezed,
    Object? prescriberInstitutionTelephone = freezed,
    Object? prescriberInstitutionEmail = freezed,
    Object? refillRx = freezed,
    Object? isPxRegistered = freezed,
    Object? status = freezed,
    Object? diagnoses = freezed,
    Object? medications = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? iV = freezed,
  }) {
    return _then(_value.copyWith(
      sId: freezed == sId
          ? _value.sId
          : sId // ignore: cast_nullable_to_non_nullable
              as String?,
      pxId: null == pxId
          ? _value.pxId
          : pxId // ignore: cast_nullable_to_non_nullable
              as String,
      pxSurname: null == pxSurname
          ? _value.pxSurname
          : pxSurname // ignore: cast_nullable_to_non_nullable
              as String,
      pxFirstname: null == pxFirstname
          ? _value.pxFirstname
          : pxFirstname // ignore: cast_nullable_to_non_nullable
              as String,
      pxgender: null == pxgender
          ? _value.pxgender
          : pxgender // ignore: cast_nullable_to_non_nullable
              as String,
      pxAge: freezed == pxAge
          ? _value.pxAge
          : pxAge // ignore: cast_nullable_to_non_nullable
              as int?,
      pxDOB: freezed == pxDOB
          ? _value.pxDOB
          : pxDOB // ignore: cast_nullable_to_non_nullable
              as String?,
      prescriberID: freezed == prescriberID
          ? _value.prescriberID
          : prescriberID // ignore: cast_nullable_to_non_nullable
              as String?,
      prescriberMDCRegNo: freezed == prescriberMDCRegNo
          ? _value.prescriberMDCRegNo
          : prescriberMDCRegNo // ignore: cast_nullable_to_non_nullable
              as String?,
      prescriberName: freezed == prescriberName
          ? _value.prescriberName
          : prescriberName // ignore: cast_nullable_to_non_nullable
              as String?,
      prescriberSignature: freezed == prescriberSignature
          ? _value.prescriberSignature
          : prescriberSignature // ignore: cast_nullable_to_non_nullable
              as String?,
      prescriberInstitution: freezed == prescriberInstitution
          ? _value.prescriberInstitution
          : prescriberInstitution // ignore: cast_nullable_to_non_nullable
              as String?,
      prescriberInstitutionName: freezed == prescriberInstitutionName
          ? _value.prescriberInstitutionName
          : prescriberInstitutionName // ignore: cast_nullable_to_non_nullable
              as String?,
      prescriberInstitutionAddress: freezed == prescriberInstitutionAddress
          ? _value.prescriberInstitutionAddress
          : prescriberInstitutionAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      prescriberInstitutionTelephone: freezed == prescriberInstitutionTelephone
          ? _value.prescriberInstitutionTelephone
          : prescriberInstitutionTelephone // ignore: cast_nullable_to_non_nullable
              as String?,
      prescriberInstitutionEmail: freezed == prescriberInstitutionEmail
          ? _value.prescriberInstitutionEmail
          : prescriberInstitutionEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      refillRx: freezed == refillRx
          ? _value.refillRx
          : refillRx // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPxRegistered: freezed == isPxRegistered
          ? _value.isPxRegistered
          : isPxRegistered // ignore: cast_nullable_to_non_nullable
              as bool?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      diagnoses: freezed == diagnoses
          ? _value.diagnoses
          : diagnoses // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      medications: freezed == medications
          ? _value.medications
          : medications // ignore: cast_nullable_to_non_nullable
              as List<Medications>?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      iV: freezed == iV
          ? _value.iV
          : iV // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PrescriptionImplCopyWith<$Res>
    implements $PrescriptionCopyWith<$Res> {
  factory _$$PrescriptionImplCopyWith(
          _$PrescriptionImpl value, $Res Function(_$PrescriptionImpl) then) =
      __$$PrescriptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? sId,
      String pxId,
      String pxSurname,
      String pxFirstname,
      String pxgender,
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
      int? iV});
}

/// @nodoc
class __$$PrescriptionImplCopyWithImpl<$Res>
    extends _$PrescriptionCopyWithImpl<$Res, _$PrescriptionImpl>
    implements _$$PrescriptionImplCopyWith<$Res> {
  __$$PrescriptionImplCopyWithImpl(
      _$PrescriptionImpl _value, $Res Function(_$PrescriptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sId = freezed,
    Object? pxId = null,
    Object? pxSurname = null,
    Object? pxFirstname = null,
    Object? pxgender = null,
    Object? pxAge = freezed,
    Object? pxDOB = freezed,
    Object? prescriberID = freezed,
    Object? prescriberMDCRegNo = freezed,
    Object? prescriberName = freezed,
    Object? prescriberSignature = freezed,
    Object? prescriberInstitution = freezed,
    Object? prescriberInstitutionName = freezed,
    Object? prescriberInstitutionAddress = freezed,
    Object? prescriberInstitutionTelephone = freezed,
    Object? prescriberInstitutionEmail = freezed,
    Object? refillRx = freezed,
    Object? isPxRegistered = freezed,
    Object? status = freezed,
    Object? diagnoses = freezed,
    Object? medications = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? iV = freezed,
  }) {
    return _then(_$PrescriptionImpl(
      sId: freezed == sId
          ? _value.sId
          : sId // ignore: cast_nullable_to_non_nullable
              as String?,
      pxId: null == pxId
          ? _value.pxId
          : pxId // ignore: cast_nullable_to_non_nullable
              as String,
      pxSurname: null == pxSurname
          ? _value.pxSurname
          : pxSurname // ignore: cast_nullable_to_non_nullable
              as String,
      pxFirstname: null == pxFirstname
          ? _value.pxFirstname
          : pxFirstname // ignore: cast_nullable_to_non_nullable
              as String,
      pxgender: null == pxgender
          ? _value.pxgender
          : pxgender // ignore: cast_nullable_to_non_nullable
              as String,
      pxAge: freezed == pxAge
          ? _value.pxAge
          : pxAge // ignore: cast_nullable_to_non_nullable
              as int?,
      pxDOB: freezed == pxDOB
          ? _value.pxDOB
          : pxDOB // ignore: cast_nullable_to_non_nullable
              as String?,
      prescriberID: freezed == prescriberID
          ? _value.prescriberID
          : prescriberID // ignore: cast_nullable_to_non_nullable
              as String?,
      prescriberMDCRegNo: freezed == prescriberMDCRegNo
          ? _value.prescriberMDCRegNo
          : prescriberMDCRegNo // ignore: cast_nullable_to_non_nullable
              as String?,
      prescriberName: freezed == prescriberName
          ? _value.prescriberName
          : prescriberName // ignore: cast_nullable_to_non_nullable
              as String?,
      prescriberSignature: freezed == prescriberSignature
          ? _value.prescriberSignature
          : prescriberSignature // ignore: cast_nullable_to_non_nullable
              as String?,
      prescriberInstitution: freezed == prescriberInstitution
          ? _value.prescriberInstitution
          : prescriberInstitution // ignore: cast_nullable_to_non_nullable
              as String?,
      prescriberInstitutionName: freezed == prescriberInstitutionName
          ? _value.prescriberInstitutionName
          : prescriberInstitutionName // ignore: cast_nullable_to_non_nullable
              as String?,
      prescriberInstitutionAddress: freezed == prescriberInstitutionAddress
          ? _value.prescriberInstitutionAddress
          : prescriberInstitutionAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      prescriberInstitutionTelephone: freezed == prescriberInstitutionTelephone
          ? _value.prescriberInstitutionTelephone
          : prescriberInstitutionTelephone // ignore: cast_nullable_to_non_nullable
              as String?,
      prescriberInstitutionEmail: freezed == prescriberInstitutionEmail
          ? _value.prescriberInstitutionEmail
          : prescriberInstitutionEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      refillRx: freezed == refillRx
          ? _value.refillRx
          : refillRx // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPxRegistered: freezed == isPxRegistered
          ? _value.isPxRegistered
          : isPxRegistered // ignore: cast_nullable_to_non_nullable
              as bool?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      diagnoses: freezed == diagnoses
          ? _value._diagnoses
          : diagnoses // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      medications: freezed == medications
          ? _value._medications
          : medications // ignore: cast_nullable_to_non_nullable
              as List<Medications>?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      iV: freezed == iV
          ? _value.iV
          : iV // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PrescriptionImpl implements _Prescription {
  _$PrescriptionImpl(
      {@JsonKey(name: '_id') this.sId,
      required this.pxId,
      required this.pxSurname,
      required this.pxFirstname,
      required this.pxgender,
      this.pxAge,
      this.pxDOB,
      this.prescriberID,
      this.prescriberMDCRegNo,
      this.prescriberName,
      this.prescriberSignature,
      this.prescriberInstitution,
      this.prescriberInstitutionName,
      this.prescriberInstitutionAddress,
      this.prescriberInstitutionTelephone,
      this.prescriberInstitutionEmail,
      this.refillRx,
      this.isPxRegistered,
      this.status,
      final List<String>? diagnoses,
      final List<Medications>? medications,
      this.createdAt,
      this.updatedAt,
      this.iV})
      : _diagnoses = diagnoses,
        _medications = medications;

  factory _$PrescriptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$PrescriptionImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? sId;
  @override
  final String pxId;
  @override
  final String pxSurname;
  @override
  final String pxFirstname;
  @override
  final String pxgender;
  @override
  final int? pxAge;
  @override
  final String? pxDOB;
  @override
  final String? prescriberID;
  @override
  final String? prescriberMDCRegNo;
  @override
  final String? prescriberName;
  @override
  final String? prescriberSignature;
  @override
  final String? prescriberInstitution;
  @override
  final String? prescriberInstitutionName;
  @override
  final String? prescriberInstitutionAddress;
  @override
  final String? prescriberInstitutionTelephone;
  @override
  final String? prescriberInstitutionEmail;
  @override
  final bool? refillRx;
  @override
  final bool? isPxRegistered;
  @override
  final String? status;
  final List<String>? _diagnoses;
  @override
  List<String>? get diagnoses {
    final value = _diagnoses;
    if (value == null) return null;
    if (_diagnoses is EqualUnmodifiableListView) return _diagnoses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Medications>? _medications;
  @override
  List<Medications>? get medications {
    final value = _medications;
    if (value == null) return null;
    if (_medications is EqualUnmodifiableListView) return _medications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? createdAt;
  @override
  final String? updatedAt;
  @override
  final int? iV;

  @override
  String toString() {
    return 'Prescription(sId: $sId, pxId: $pxId, pxSurname: $pxSurname, pxFirstname: $pxFirstname, pxgender: $pxgender, pxAge: $pxAge, pxDOB: $pxDOB, prescriberID: $prescriberID, prescriberMDCRegNo: $prescriberMDCRegNo, prescriberName: $prescriberName, prescriberSignature: $prescriberSignature, prescriberInstitution: $prescriberInstitution, prescriberInstitutionName: $prescriberInstitutionName, prescriberInstitutionAddress: $prescriberInstitutionAddress, prescriberInstitutionTelephone: $prescriberInstitutionTelephone, prescriberInstitutionEmail: $prescriberInstitutionEmail, refillRx: $refillRx, isPxRegistered: $isPxRegistered, status: $status, diagnoses: $diagnoses, medications: $medications, createdAt: $createdAt, updatedAt: $updatedAt, iV: $iV)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrescriptionImpl &&
            (identical(other.sId, sId) || other.sId == sId) &&
            (identical(other.pxId, pxId) || other.pxId == pxId) &&
            (identical(other.pxSurname, pxSurname) ||
                other.pxSurname == pxSurname) &&
            (identical(other.pxFirstname, pxFirstname) ||
                other.pxFirstname == pxFirstname) &&
            (identical(other.pxgender, pxgender) ||
                other.pxgender == pxgender) &&
            (identical(other.pxAge, pxAge) || other.pxAge == pxAge) &&
            (identical(other.pxDOB, pxDOB) || other.pxDOB == pxDOB) &&
            (identical(other.prescriberID, prescriberID) ||
                other.prescriberID == prescriberID) &&
            (identical(other.prescriberMDCRegNo, prescriberMDCRegNo) ||
                other.prescriberMDCRegNo == prescriberMDCRegNo) &&
            (identical(other.prescriberName, prescriberName) ||
                other.prescriberName == prescriberName) &&
            (identical(other.prescriberSignature, prescriberSignature) ||
                other.prescriberSignature == prescriberSignature) &&
            (identical(other.prescriberInstitution, prescriberInstitution) ||
                other.prescriberInstitution == prescriberInstitution) &&
            (identical(other.prescriberInstitutionName, prescriberInstitutionName) ||
                other.prescriberInstitutionName == prescriberInstitutionName) &&
            (identical(other.prescriberInstitutionAddress,
                    prescriberInstitutionAddress) ||
                other.prescriberInstitutionAddress ==
                    prescriberInstitutionAddress) &&
            (identical(other.prescriberInstitutionTelephone,
                    prescriberInstitutionTelephone) ||
                other.prescriberInstitutionTelephone ==
                    prescriberInstitutionTelephone) &&
            (identical(other.prescriberInstitutionEmail,
                    prescriberInstitutionEmail) ||
                other.prescriberInstitutionEmail ==
                    prescriberInstitutionEmail) &&
            (identical(other.refillRx, refillRx) ||
                other.refillRx == refillRx) &&
            (identical(other.isPxRegistered, isPxRegistered) ||
                other.isPxRegistered == isPxRegistered) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._diagnoses, _diagnoses) &&
            const DeepCollectionEquality()
                .equals(other._medications, _medications) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt) &&
            (identical(other.iV, iV) || other.iV == iV));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        sId,
        pxId,
        pxSurname,
        pxFirstname,
        pxgender,
        pxAge,
        pxDOB,
        prescriberID,
        prescriberMDCRegNo,
        prescriberName,
        prescriberSignature,
        prescriberInstitution,
        prescriberInstitutionName,
        prescriberInstitutionAddress,
        prescriberInstitutionTelephone,
        prescriberInstitutionEmail,
        refillRx,
        isPxRegistered,
        status,
        const DeepCollectionEquality().hash(_diagnoses),
        const DeepCollectionEquality().hash(_medications),
        createdAt,
        updatedAt,
        iV
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PrescriptionImplCopyWith<_$PrescriptionImpl> get copyWith =>
      __$$PrescriptionImplCopyWithImpl<_$PrescriptionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PrescriptionImplToJson(
      this,
    );
  }
}

abstract class _Prescription implements Prescription {
  factory _Prescription(
      {@JsonKey(name: '_id') final String? sId,
      required final String pxId,
      required final String pxSurname,
      required final String pxFirstname,
      required final String pxgender,
      final int? pxAge,
      final String? pxDOB,
      final String? prescriberID,
      final String? prescriberMDCRegNo,
      final String? prescriberName,
      final String? prescriberSignature,
      final String? prescriberInstitution,
      final String? prescriberInstitutionName,
      final String? prescriberInstitutionAddress,
      final String? prescriberInstitutionTelephone,
      final String? prescriberInstitutionEmail,
      final bool? refillRx,
      final bool? isPxRegistered,
      final String? status,
      final List<String>? diagnoses,
      final List<Medications>? medications,
      final String? createdAt,
      final String? updatedAt,
      final int? iV}) = _$PrescriptionImpl;

  factory _Prescription.fromJson(Map<String, dynamic> json) =
      _$PrescriptionImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get sId;
  @override
  String get pxId;
  @override
  String get pxSurname;
  @override
  String get pxFirstname;
  @override
  String get pxgender;
  @override
  int? get pxAge;
  @override
  String? get pxDOB;
  @override
  String? get prescriberID;
  @override
  String? get prescriberMDCRegNo;
  @override
  String? get prescriberName;
  @override
  String? get prescriberSignature;
  @override
  String? get prescriberInstitution;
  @override
  String? get prescriberInstitutionName;
  @override
  String? get prescriberInstitutionAddress;
  @override
  String? get prescriberInstitutionTelephone;
  @override
  String? get prescriberInstitutionEmail;
  @override
  bool? get refillRx;
  @override
  bool? get isPxRegistered;
  @override
  String? get status;
  @override
  List<String>? get diagnoses;
  @override
  List<Medications>? get medications;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  int? get iV;
  @override
  @JsonKey(ignore: true)
  _$$PrescriptionImplCopyWith<_$PrescriptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
