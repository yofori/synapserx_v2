// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'labrequest.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LabRequest _$LabRequestFromJson(Map<String, dynamic> json) {
  return _LabReequest.fromJson(json);
}

/// @nodoc
mixin _$LabRequest {
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
  String? get status => throw _privateConstructorUsedError;
  List<String>? get diagnoses => throw _privateConstructorUsedError;
  List<RequestedLabs>? get requests => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LabRequestCopyWith<LabRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LabRequestCopyWith<$Res> {
  factory $LabRequestCopyWith(
          LabRequest value, $Res Function(LabRequest) then) =
      _$LabRequestCopyWithImpl<$Res, LabRequest>;
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
      String? status,
      List<String>? diagnoses,
      List<RequestedLabs>? requests,
      String? createdAt,
      String? updatedAt});
}

/// @nodoc
class _$LabRequestCopyWithImpl<$Res, $Val extends LabRequest>
    implements $LabRequestCopyWith<$Res> {
  _$LabRequestCopyWithImpl(this._value, this._then);

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
    Object? status = freezed,
    Object? diagnoses = freezed,
    Object? requests = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
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
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      diagnoses: freezed == diagnoses
          ? _value.diagnoses
          : diagnoses // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      requests: freezed == requests
          ? _value.requests
          : requests // ignore: cast_nullable_to_non_nullable
              as List<RequestedLabs>?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LabReequestImplCopyWith<$Res>
    implements $LabRequestCopyWith<$Res> {
  factory _$$LabReequestImplCopyWith(
          _$LabReequestImpl value, $Res Function(_$LabReequestImpl) then) =
      __$$LabReequestImplCopyWithImpl<$Res>;
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
      String? status,
      List<String>? diagnoses,
      List<RequestedLabs>? requests,
      String? createdAt,
      String? updatedAt});
}

/// @nodoc
class __$$LabReequestImplCopyWithImpl<$Res>
    extends _$LabRequestCopyWithImpl<$Res, _$LabReequestImpl>
    implements _$$LabReequestImplCopyWith<$Res> {
  __$$LabReequestImplCopyWithImpl(
      _$LabReequestImpl _value, $Res Function(_$LabReequestImpl) _then)
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
    Object? status = freezed,
    Object? diagnoses = freezed,
    Object? requests = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$LabReequestImpl(
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
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      diagnoses: freezed == diagnoses
          ? _value._diagnoses
          : diagnoses // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      requests: freezed == requests
          ? _value._requests
          : requests // ignore: cast_nullable_to_non_nullable
              as List<RequestedLabs>?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LabReequestImpl implements _LabReequest {
  _$LabReequestImpl(
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
      this.status,
      final List<String>? diagnoses,
      final List<RequestedLabs>? requests,
      this.createdAt,
      this.updatedAt})
      : _diagnoses = diagnoses,
        _requests = requests;

  factory _$LabReequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$LabReequestImplFromJson(json);

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

  final List<RequestedLabs>? _requests;
  @override
  List<RequestedLabs>? get requests {
    final value = _requests;
    if (value == null) return null;
    if (_requests is EqualUnmodifiableListView) return _requests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? createdAt;
  @override
  final String? updatedAt;

  @override
  String toString() {
    return 'LabRequest(sId: $sId, pxId: $pxId, pxSurname: $pxSurname, pxFirstname: $pxFirstname, pxgender: $pxgender, pxAge: $pxAge, pxDOB: $pxDOB, prescriberID: $prescriberID, prescriberMDCRegNo: $prescriberMDCRegNo, prescriberName: $prescriberName, prescriberSignature: $prescriberSignature, prescriberInstitution: $prescriberInstitution, prescriberInstitutionName: $prescriberInstitutionName, prescriberInstitutionAddress: $prescriberInstitutionAddress, prescriberInstitutionTelephone: $prescriberInstitutionTelephone, prescriberInstitutionEmail: $prescriberInstitutionEmail, status: $status, diagnoses: $diagnoses, requests: $requests, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LabReequestImpl &&
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
            (identical(other.prescriberInstitutionName,
                    prescriberInstitutionName) ||
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
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._diagnoses, _diagnoses) &&
            const DeepCollectionEquality().equals(other._requests, _requests) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
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
        status,
        const DeepCollectionEquality().hash(_diagnoses),
        const DeepCollectionEquality().hash(_requests),
        createdAt,
        updatedAt
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LabReequestImplCopyWith<_$LabReequestImpl> get copyWith =>
      __$$LabReequestImplCopyWithImpl<_$LabReequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LabReequestImplToJson(
      this,
    );
  }
}

abstract class _LabReequest implements LabRequest {
  factory _LabReequest(
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
      final String? status,
      final List<String>? diagnoses,
      final List<RequestedLabs>? requests,
      final String? createdAt,
      final String? updatedAt}) = _$LabReequestImpl;

  factory _LabReequest.fromJson(Map<String, dynamic> json) =
      _$LabReequestImpl.fromJson;

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
  String? get status;
  @override
  List<String>? get diagnoses;
  @override
  List<RequestedLabs>? get requests;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$LabReequestImplCopyWith<_$LabReequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
