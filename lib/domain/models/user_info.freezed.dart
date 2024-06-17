// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserInfo _$UserInfoFromJson(Map<String, dynamic> json) {
  return _UserInfo.fromJson(json);
}

/// @nodoc
mixin _$UserInfo {
//@JsonKey(name: '_id') String? id,
// String? username,
// String? password,
  String? get email => throw _privateConstructorUsedError; //String? role,
//String? status,
// String? confirmationCode,
  @JsonKey(name: 'prescriberMDCRegNo')
  String? get prescriberMDCRegNo => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get surname => throw _privateConstructorUsedError;
  String? get firstname => throw _privateConstructorUsedError;
  String? get countryCode => throw _privateConstructorUsedError;
  String? get telephoneNo => throw _privateConstructorUsedError;
  List<String>? get specialty => throw _privateConstructorUsedError;
  dynamic get signature =>
      throw _privateConstructorUsedError; //DateTime? lastLogin,
  List<UserAccount>? get prescriberInstitutions =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserInfoCopyWith<UserInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserInfoCopyWith<$Res> {
  factory $UserInfoCopyWith(UserInfo value, $Res Function(UserInfo) then) =
      _$UserInfoCopyWithImpl<$Res, UserInfo>;
  @useResult
  $Res call(
      {String? email,
      @JsonKey(name: 'prescriberMDCRegNo') String? prescriberMDCRegNo,
      String? title,
      String? surname,
      String? firstname,
      String? countryCode,
      String? telephoneNo,
      List<String>? specialty,
      dynamic signature,
      List<UserAccount>? prescriberInstitutions});
}

/// @nodoc
class _$UserInfoCopyWithImpl<$Res, $Val extends UserInfo>
    implements $UserInfoCopyWith<$Res> {
  _$UserInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? prescriberMDCRegNo = freezed,
    Object? title = freezed,
    Object? surname = freezed,
    Object? firstname = freezed,
    Object? countryCode = freezed,
    Object? telephoneNo = freezed,
    Object? specialty = freezed,
    Object? signature = freezed,
    Object? prescriberInstitutions = freezed,
  }) {
    return _then(_value.copyWith(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      prescriberMDCRegNo: freezed == prescriberMDCRegNo
          ? _value.prescriberMDCRegNo
          : prescriberMDCRegNo // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      surname: freezed == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String?,
      firstname: freezed == firstname
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String?,
      countryCode: freezed == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      telephoneNo: freezed == telephoneNo
          ? _value.telephoneNo
          : telephoneNo // ignore: cast_nullable_to_non_nullable
              as String?,
      specialty: freezed == specialty
          ? _value.specialty
          : specialty // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      signature: freezed == signature
          ? _value.signature
          : signature // ignore: cast_nullable_to_non_nullable
              as dynamic,
      prescriberInstitutions: freezed == prescriberInstitutions
          ? _value.prescriberInstitutions
          : prescriberInstitutions // ignore: cast_nullable_to_non_nullable
              as List<UserAccount>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserInfoImplCopyWith<$Res>
    implements $UserInfoCopyWith<$Res> {
  factory _$$UserInfoImplCopyWith(
          _$UserInfoImpl value, $Res Function(_$UserInfoImpl) then) =
      __$$UserInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? email,
      @JsonKey(name: 'prescriberMDCRegNo') String? prescriberMDCRegNo,
      String? title,
      String? surname,
      String? firstname,
      String? countryCode,
      String? telephoneNo,
      List<String>? specialty,
      dynamic signature,
      List<UserAccount>? prescriberInstitutions});
}

/// @nodoc
class __$$UserInfoImplCopyWithImpl<$Res>
    extends _$UserInfoCopyWithImpl<$Res, _$UserInfoImpl>
    implements _$$UserInfoImplCopyWith<$Res> {
  __$$UserInfoImplCopyWithImpl(
      _$UserInfoImpl _value, $Res Function(_$UserInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? prescriberMDCRegNo = freezed,
    Object? title = freezed,
    Object? surname = freezed,
    Object? firstname = freezed,
    Object? countryCode = freezed,
    Object? telephoneNo = freezed,
    Object? specialty = freezed,
    Object? signature = freezed,
    Object? prescriberInstitutions = freezed,
  }) {
    return _then(_$UserInfoImpl(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      prescriberMDCRegNo: freezed == prescriberMDCRegNo
          ? _value.prescriberMDCRegNo
          : prescriberMDCRegNo // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      surname: freezed == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String?,
      firstname: freezed == firstname
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String?,
      countryCode: freezed == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      telephoneNo: freezed == telephoneNo
          ? _value.telephoneNo
          : telephoneNo // ignore: cast_nullable_to_non_nullable
              as String?,
      specialty: freezed == specialty
          ? _value._specialty
          : specialty // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      signature: freezed == signature
          ? _value.signature
          : signature // ignore: cast_nullable_to_non_nullable
              as dynamic,
      prescriberInstitutions: freezed == prescriberInstitutions
          ? _value._prescriberInstitutions
          : prescriberInstitutions // ignore: cast_nullable_to_non_nullable
              as List<UserAccount>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$UserInfoImpl implements _UserInfo {
  _$UserInfoImpl(
      {this.email,
      @JsonKey(name: 'prescriberMDCRegNo') this.prescriberMDCRegNo,
      this.title,
      this.surname,
      this.firstname,
      this.countryCode,
      this.telephoneNo,
      final List<String>? specialty,
      this.signature,
      final List<UserAccount>? prescriberInstitutions})
      : _specialty = specialty,
        _prescriberInstitutions = prescriberInstitutions;

  factory _$UserInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserInfoImplFromJson(json);

//@JsonKey(name: '_id') String? id,
// String? username,
// String? password,
  @override
  final String? email;
//String? role,
//String? status,
// String? confirmationCode,
  @override
  @JsonKey(name: 'prescriberMDCRegNo')
  final String? prescriberMDCRegNo;
  @override
  final String? title;
  @override
  final String? surname;
  @override
  final String? firstname;
  @override
  final String? countryCode;
  @override
  final String? telephoneNo;
  final List<String>? _specialty;
  @override
  List<String>? get specialty {
    final value = _specialty;
    if (value == null) return null;
    if (_specialty is EqualUnmodifiableListView) return _specialty;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final dynamic signature;
//DateTime? lastLogin,
  final List<UserAccount>? _prescriberInstitutions;
//DateTime? lastLogin,
  @override
  List<UserAccount>? get prescriberInstitutions {
    final value = _prescriberInstitutions;
    if (value == null) return null;
    if (_prescriberInstitutions is EqualUnmodifiableListView)
      return _prescriberInstitutions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'UserInfo(email: $email, prescriberMDCRegNo: $prescriberMDCRegNo, title: $title, surname: $surname, firstname: $firstname, countryCode: $countryCode, telephoneNo: $telephoneNo, specialty: $specialty, signature: $signature, prescriberInstitutions: $prescriberInstitutions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserInfoImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.prescriberMDCRegNo, prescriberMDCRegNo) ||
                other.prescriberMDCRegNo == prescriberMDCRegNo) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.surname, surname) || other.surname == surname) &&
            (identical(other.firstname, firstname) ||
                other.firstname == firstname) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            (identical(other.telephoneNo, telephoneNo) ||
                other.telephoneNo == telephoneNo) &&
            const DeepCollectionEquality()
                .equals(other._specialty, _specialty) &&
            const DeepCollectionEquality().equals(other.signature, signature) &&
            const DeepCollectionEquality().equals(
                other._prescriberInstitutions, _prescriberInstitutions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      email,
      prescriberMDCRegNo,
      title,
      surname,
      firstname,
      countryCode,
      telephoneNo,
      const DeepCollectionEquality().hash(_specialty),
      const DeepCollectionEquality().hash(signature),
      const DeepCollectionEquality().hash(_prescriberInstitutions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserInfoImplCopyWith<_$UserInfoImpl> get copyWith =>
      __$$UserInfoImplCopyWithImpl<_$UserInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserInfoImplToJson(
      this,
    );
  }
}

abstract class _UserInfo implements UserInfo {
  factory _UserInfo(
      {final String? email,
      @JsonKey(name: 'prescriberMDCRegNo') final String? prescriberMDCRegNo,
      final String? title,
      final String? surname,
      final String? firstname,
      final String? countryCode,
      final String? telephoneNo,
      final List<String>? specialty,
      final dynamic signature,
      final List<UserAccount>? prescriberInstitutions}) = _$UserInfoImpl;

  factory _UserInfo.fromJson(Map<String, dynamic> json) =
      _$UserInfoImpl.fromJson;

  @override //@JsonKey(name: '_id') String? id,
// String? username,
// String? password,
  String? get email;
  @override //String? role,
//String? status,
// String? confirmationCode,
  @JsonKey(name: 'prescriberMDCRegNo')
  String? get prescriberMDCRegNo;
  @override
  String? get title;
  @override
  String? get surname;
  @override
  String? get firstname;
  @override
  String? get countryCode;
  @override
  String? get telephoneNo;
  @override
  List<String>? get specialty;
  @override
  dynamic get signature;
  @override //DateTime? lastLogin,
  List<UserAccount>? get prescriberInstitutions;
  @override
  @JsonKey(ignore: true)
  _$$UserInfoImplCopyWith<_$UserInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
