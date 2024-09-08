// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'useraccounts.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserAccount _$UserAccountFromJson(Map<String, dynamic> json) {
  return _UserAccount.fromJson(json);
}

/// @nodoc
mixin _$UserAccount {
  String get institutionName => throw _privateConstructorUsedError;
  String? get institutionAddress => throw _privateConstructorUsedError;
  String? get institutionTelephone => throw _privateConstructorUsedError;
  String? get institutionEmail => throw _privateConstructorUsedError;
  bool get defaultAccount => throw _privateConstructorUsedError;
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserAccountCopyWith<UserAccount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserAccountCopyWith<$Res> {
  factory $UserAccountCopyWith(
          UserAccount value, $Res Function(UserAccount) then) =
      _$UserAccountCopyWithImpl<$Res, UserAccount>;
  @useResult
  $Res call(
      {String institutionName,
      String? institutionAddress,
      String? institutionTelephone,
      String? institutionEmail,
      bool defaultAccount,
      @JsonKey(name: '_id') String? id});
}

/// @nodoc
class _$UserAccountCopyWithImpl<$Res, $Val extends UserAccount>
    implements $UserAccountCopyWith<$Res> {
  _$UserAccountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? institutionName = null,
    Object? institutionAddress = freezed,
    Object? institutionTelephone = freezed,
    Object? institutionEmail = freezed,
    Object? defaultAccount = null,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      institutionName: null == institutionName
          ? _value.institutionName
          : institutionName // ignore: cast_nullable_to_non_nullable
              as String,
      institutionAddress: freezed == institutionAddress
          ? _value.institutionAddress
          : institutionAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      institutionTelephone: freezed == institutionTelephone
          ? _value.institutionTelephone
          : institutionTelephone // ignore: cast_nullable_to_non_nullable
              as String?,
      institutionEmail: freezed == institutionEmail
          ? _value.institutionEmail
          : institutionEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      defaultAccount: null == defaultAccount
          ? _value.defaultAccount
          : defaultAccount // ignore: cast_nullable_to_non_nullable
              as bool,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserAccountImplCopyWith<$Res>
    implements $UserAccountCopyWith<$Res> {
  factory _$$UserAccountImplCopyWith(
          _$UserAccountImpl value, $Res Function(_$UserAccountImpl) then) =
      __$$UserAccountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String institutionName,
      String? institutionAddress,
      String? institutionTelephone,
      String? institutionEmail,
      bool defaultAccount,
      @JsonKey(name: '_id') String? id});
}

/// @nodoc
class __$$UserAccountImplCopyWithImpl<$Res>
    extends _$UserAccountCopyWithImpl<$Res, _$UserAccountImpl>
    implements _$$UserAccountImplCopyWith<$Res> {
  __$$UserAccountImplCopyWithImpl(
      _$UserAccountImpl _value, $Res Function(_$UserAccountImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? institutionName = null,
    Object? institutionAddress = freezed,
    Object? institutionTelephone = freezed,
    Object? institutionEmail = freezed,
    Object? defaultAccount = null,
    Object? id = freezed,
  }) {
    return _then(_$UserAccountImpl(
      institutionName: null == institutionName
          ? _value.institutionName
          : institutionName // ignore: cast_nullable_to_non_nullable
              as String,
      institutionAddress: freezed == institutionAddress
          ? _value.institutionAddress
          : institutionAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      institutionTelephone: freezed == institutionTelephone
          ? _value.institutionTelephone
          : institutionTelephone // ignore: cast_nullable_to_non_nullable
              as String?,
      institutionEmail: freezed == institutionEmail
          ? _value.institutionEmail
          : institutionEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      defaultAccount: null == defaultAccount
          ? _value.defaultAccount
          : defaultAccount // ignore: cast_nullable_to_non_nullable
              as bool,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$UserAccountImpl implements _UserAccount {
  const _$UserAccountImpl(
      {required this.institutionName,
      this.institutionAddress,
      this.institutionTelephone,
      this.institutionEmail,
      this.defaultAccount = false,
      @JsonKey(name: '_id') this.id});

  factory _$UserAccountImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserAccountImplFromJson(json);

  @override
  final String institutionName;
  @override
  final String? institutionAddress;
  @override
  final String? institutionTelephone;
  @override
  final String? institutionEmail;
  @override
  @JsonKey()
  final bool defaultAccount;
  @override
  @JsonKey(name: '_id')
  final String? id;

  @override
  String toString() {
    return 'UserAccount(institutionName: $institutionName, institutionAddress: $institutionAddress, institutionTelephone: $institutionTelephone, institutionEmail: $institutionEmail, defaultAccount: $defaultAccount, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserAccountImpl &&
            (identical(other.institutionName, institutionName) ||
                other.institutionName == institutionName) &&
            (identical(other.institutionAddress, institutionAddress) ||
                other.institutionAddress == institutionAddress) &&
            (identical(other.institutionTelephone, institutionTelephone) ||
                other.institutionTelephone == institutionTelephone) &&
            (identical(other.institutionEmail, institutionEmail) ||
                other.institutionEmail == institutionEmail) &&
            (identical(other.defaultAccount, defaultAccount) ||
                other.defaultAccount == defaultAccount) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      institutionName,
      institutionAddress,
      institutionTelephone,
      institutionEmail,
      defaultAccount,
      id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserAccountImplCopyWith<_$UserAccountImpl> get copyWith =>
      __$$UserAccountImplCopyWithImpl<_$UserAccountImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserAccountImplToJson(
      this,
    );
  }
}

abstract class _UserAccount implements UserAccount {
  const factory _UserAccount(
      {required final String institutionName,
      final String? institutionAddress,
      final String? institutionTelephone,
      final String? institutionEmail,
      final bool defaultAccount,
      @JsonKey(name: '_id') final String? id}) = _$UserAccountImpl;

  factory _UserAccount.fromJson(Map<String, dynamic> json) =
      _$UserAccountImpl.fromJson;

  @override
  String get institutionName;
  @override
  String? get institutionAddress;
  @override
  String? get institutionTelephone;
  @override
  String? get institutionEmail;
  @override
  bool get defaultAccount;
  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$UserAccountImplCopyWith<_$UserAccountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
