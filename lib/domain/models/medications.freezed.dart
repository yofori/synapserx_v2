// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'medications.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Medications _$MedicationsFromJson(Map<String, dynamic> json) {
  return _Medications.fromJson(json);
}

/// @nodoc
mixin _$Medications {
  String get drugCode => throw _privateConstructorUsedError;
  String? get drugName => throw _privateConstructorUsedError;
  String? get drugGenericName => throw _privateConstructorUsedError;
  String? get dose => throw _privateConstructorUsedError;
  String? get dosageUnits => throw _privateConstructorUsedError;
  String? get dosageRegimen => throw _privateConstructorUsedError;
  String? get duration => throw _privateConstructorUsedError;
  String? get durationUnits => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  bool? get dispenseAsWritten => throw _privateConstructorUsedError;
  bool? get allowRefills => throw _privateConstructorUsedError;
  int? get maxRefillsAllowed => throw _privateConstructorUsedError;
  @JsonKey(name: '_id')
  String? get sId => throw _privateConstructorUsedError;
  String? get directionOfUse => throw _privateConstructorUsedError;
  List<String>? get dosageAllowedUnits => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MedicationsCopyWith<Medications> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MedicationsCopyWith<$Res> {
  factory $MedicationsCopyWith(
          Medications value, $Res Function(Medications) then) =
      _$MedicationsCopyWithImpl<$Res, Medications>;
  @useResult
  $Res call(
      {String drugCode,
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
      List<String>? dosageAllowedUnits});
}

/// @nodoc
class _$MedicationsCopyWithImpl<$Res, $Val extends Medications>
    implements $MedicationsCopyWith<$Res> {
  _$MedicationsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? drugCode = null,
    Object? drugName = freezed,
    Object? drugGenericName = freezed,
    Object? dose = freezed,
    Object? dosageUnits = freezed,
    Object? dosageRegimen = freezed,
    Object? duration = freezed,
    Object? durationUnits = freezed,
    Object? status = freezed,
    Object? dispenseAsWritten = freezed,
    Object? allowRefills = freezed,
    Object? maxRefillsAllowed = freezed,
    Object? sId = freezed,
    Object? directionOfUse = freezed,
    Object? dosageAllowedUnits = freezed,
  }) {
    return _then(_value.copyWith(
      drugCode: null == drugCode
          ? _value.drugCode
          : drugCode // ignore: cast_nullable_to_non_nullable
              as String,
      drugName: freezed == drugName
          ? _value.drugName
          : drugName // ignore: cast_nullable_to_non_nullable
              as String?,
      drugGenericName: freezed == drugGenericName
          ? _value.drugGenericName
          : drugGenericName // ignore: cast_nullable_to_non_nullable
              as String?,
      dose: freezed == dose
          ? _value.dose
          : dose // ignore: cast_nullable_to_non_nullable
              as String?,
      dosageUnits: freezed == dosageUnits
          ? _value.dosageUnits
          : dosageUnits // ignore: cast_nullable_to_non_nullable
              as String?,
      dosageRegimen: freezed == dosageRegimen
          ? _value.dosageRegimen
          : dosageRegimen // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String?,
      durationUnits: freezed == durationUnits
          ? _value.durationUnits
          : durationUnits // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      dispenseAsWritten: freezed == dispenseAsWritten
          ? _value.dispenseAsWritten
          : dispenseAsWritten // ignore: cast_nullable_to_non_nullable
              as bool?,
      allowRefills: freezed == allowRefills
          ? _value.allowRefills
          : allowRefills // ignore: cast_nullable_to_non_nullable
              as bool?,
      maxRefillsAllowed: freezed == maxRefillsAllowed
          ? _value.maxRefillsAllowed
          : maxRefillsAllowed // ignore: cast_nullable_to_non_nullable
              as int?,
      sId: freezed == sId
          ? _value.sId
          : sId // ignore: cast_nullable_to_non_nullable
              as String?,
      directionOfUse: freezed == directionOfUse
          ? _value.directionOfUse
          : directionOfUse // ignore: cast_nullable_to_non_nullable
              as String?,
      dosageAllowedUnits: freezed == dosageAllowedUnits
          ? _value.dosageAllowedUnits
          : dosageAllowedUnits // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MedicationsImplCopyWith<$Res>
    implements $MedicationsCopyWith<$Res> {
  factory _$$MedicationsImplCopyWith(
          _$MedicationsImpl value, $Res Function(_$MedicationsImpl) then) =
      __$$MedicationsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String drugCode,
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
      List<String>? dosageAllowedUnits});
}

/// @nodoc
class __$$MedicationsImplCopyWithImpl<$Res>
    extends _$MedicationsCopyWithImpl<$Res, _$MedicationsImpl>
    implements _$$MedicationsImplCopyWith<$Res> {
  __$$MedicationsImplCopyWithImpl(
      _$MedicationsImpl _value, $Res Function(_$MedicationsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? drugCode = null,
    Object? drugName = freezed,
    Object? drugGenericName = freezed,
    Object? dose = freezed,
    Object? dosageUnits = freezed,
    Object? dosageRegimen = freezed,
    Object? duration = freezed,
    Object? durationUnits = freezed,
    Object? status = freezed,
    Object? dispenseAsWritten = freezed,
    Object? allowRefills = freezed,
    Object? maxRefillsAllowed = freezed,
    Object? sId = freezed,
    Object? directionOfUse = freezed,
    Object? dosageAllowedUnits = freezed,
  }) {
    return _then(_$MedicationsImpl(
      drugCode: null == drugCode
          ? _value.drugCode
          : drugCode // ignore: cast_nullable_to_non_nullable
              as String,
      drugName: freezed == drugName
          ? _value.drugName
          : drugName // ignore: cast_nullable_to_non_nullable
              as String?,
      drugGenericName: freezed == drugGenericName
          ? _value.drugGenericName
          : drugGenericName // ignore: cast_nullable_to_non_nullable
              as String?,
      dose: freezed == dose
          ? _value.dose
          : dose // ignore: cast_nullable_to_non_nullable
              as String?,
      dosageUnits: freezed == dosageUnits
          ? _value.dosageUnits
          : dosageUnits // ignore: cast_nullable_to_non_nullable
              as String?,
      dosageRegimen: freezed == dosageRegimen
          ? _value.dosageRegimen
          : dosageRegimen // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String?,
      durationUnits: freezed == durationUnits
          ? _value.durationUnits
          : durationUnits // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      dispenseAsWritten: freezed == dispenseAsWritten
          ? _value.dispenseAsWritten
          : dispenseAsWritten // ignore: cast_nullable_to_non_nullable
              as bool?,
      allowRefills: freezed == allowRefills
          ? _value.allowRefills
          : allowRefills // ignore: cast_nullable_to_non_nullable
              as bool?,
      maxRefillsAllowed: freezed == maxRefillsAllowed
          ? _value.maxRefillsAllowed
          : maxRefillsAllowed // ignore: cast_nullable_to_non_nullable
              as int?,
      sId: freezed == sId
          ? _value.sId
          : sId // ignore: cast_nullable_to_non_nullable
              as String?,
      directionOfUse: freezed == directionOfUse
          ? _value.directionOfUse
          : directionOfUse // ignore: cast_nullable_to_non_nullable
              as String?,
      dosageAllowedUnits: freezed == dosageAllowedUnits
          ? _value._dosageAllowedUnits
          : dosageAllowedUnits // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MedicationsImpl implements _Medications {
  _$MedicationsImpl(
      {required this.drugCode,
      this.drugName,
      this.drugGenericName,
      this.dose,
      this.dosageUnits,
      this.dosageRegimen,
      this.duration,
      this.durationUnits,
      this.status,
      this.dispenseAsWritten,
      this.allowRefills,
      this.maxRefillsAllowed,
      @JsonKey(name: '_id') this.sId,
      this.directionOfUse,
      final List<String>? dosageAllowedUnits})
      : _dosageAllowedUnits = dosageAllowedUnits;

  factory _$MedicationsImpl.fromJson(Map<String, dynamic> json) =>
      _$$MedicationsImplFromJson(json);

  @override
  final String drugCode;
  @override
  final String? drugName;
  @override
  final String? drugGenericName;
  @override
  final String? dose;
  @override
  final String? dosageUnits;
  @override
  final String? dosageRegimen;
  @override
  final String? duration;
  @override
  final String? durationUnits;
  @override
  final String? status;
  @override
  final bool? dispenseAsWritten;
  @override
  final bool? allowRefills;
  @override
  final int? maxRefillsAllowed;
  @override
  @JsonKey(name: '_id')
  final String? sId;
  @override
  final String? directionOfUse;
  final List<String>? _dosageAllowedUnits;
  @override
  List<String>? get dosageAllowedUnits {
    final value = _dosageAllowedUnits;
    if (value == null) return null;
    if (_dosageAllowedUnits is EqualUnmodifiableListView)
      return _dosageAllowedUnits;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Medications(drugCode: $drugCode, drugName: $drugName, drugGenericName: $drugGenericName, dose: $dose, dosageUnits: $dosageUnits, dosageRegimen: $dosageRegimen, duration: $duration, durationUnits: $durationUnits, status: $status, dispenseAsWritten: $dispenseAsWritten, allowRefills: $allowRefills, maxRefillsAllowed: $maxRefillsAllowed, sId: $sId, directionOfUse: $directionOfUse, dosageAllowedUnits: $dosageAllowedUnits)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MedicationsImpl &&
            (identical(other.drugCode, drugCode) ||
                other.drugCode == drugCode) &&
            (identical(other.drugName, drugName) ||
                other.drugName == drugName) &&
            (identical(other.drugGenericName, drugGenericName) ||
                other.drugGenericName == drugGenericName) &&
            (identical(other.dose, dose) || other.dose == dose) &&
            (identical(other.dosageUnits, dosageUnits) ||
                other.dosageUnits == dosageUnits) &&
            (identical(other.dosageRegimen, dosageRegimen) ||
                other.dosageRegimen == dosageRegimen) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.durationUnits, durationUnits) ||
                other.durationUnits == durationUnits) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.dispenseAsWritten, dispenseAsWritten) ||
                other.dispenseAsWritten == dispenseAsWritten) &&
            (identical(other.allowRefills, allowRefills) ||
                other.allowRefills == allowRefills) &&
            (identical(other.maxRefillsAllowed, maxRefillsAllowed) ||
                other.maxRefillsAllowed == maxRefillsAllowed) &&
            (identical(other.sId, sId) || other.sId == sId) &&
            (identical(other.directionOfUse, directionOfUse) ||
                other.directionOfUse == directionOfUse) &&
            const DeepCollectionEquality()
                .equals(other._dosageAllowedUnits, _dosageAllowedUnits));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      drugCode,
      drugName,
      drugGenericName,
      dose,
      dosageUnits,
      dosageRegimen,
      duration,
      durationUnits,
      status,
      dispenseAsWritten,
      allowRefills,
      maxRefillsAllowed,
      sId,
      directionOfUse,
      const DeepCollectionEquality().hash(_dosageAllowedUnits));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MedicationsImplCopyWith<_$MedicationsImpl> get copyWith =>
      __$$MedicationsImplCopyWithImpl<_$MedicationsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MedicationsImplToJson(
      this,
    );
  }
}

abstract class _Medications implements Medications {
  factory _Medications(
      {required final String drugCode,
      final String? drugName,
      final String? drugGenericName,
      final String? dose,
      final String? dosageUnits,
      final String? dosageRegimen,
      final String? duration,
      final String? durationUnits,
      final String? status,
      final bool? dispenseAsWritten,
      final bool? allowRefills,
      final int? maxRefillsAllowed,
      @JsonKey(name: '_id') final String? sId,
      final String? directionOfUse,
      final List<String>? dosageAllowedUnits}) = _$MedicationsImpl;

  factory _Medications.fromJson(Map<String, dynamic> json) =
      _$MedicationsImpl.fromJson;

  @override
  String get drugCode;
  @override
  String? get drugName;
  @override
  String? get drugGenericName;
  @override
  String? get dose;
  @override
  String? get dosageUnits;
  @override
  String? get dosageRegimen;
  @override
  String? get duration;
  @override
  String? get durationUnits;
  @override
  String? get status;
  @override
  bool? get dispenseAsWritten;
  @override
  bool? get allowRefills;
  @override
  int? get maxRefillsAllowed;
  @override
  @JsonKey(name: '_id')
  String? get sId;
  @override
  String? get directionOfUse;
  @override
  List<String>? get dosageAllowedUnits;
  @override
  @JsonKey(ignore: true)
  _$$MedicationsImplCopyWith<_$MedicationsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
