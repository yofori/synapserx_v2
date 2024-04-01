// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Transaction _$TransactionFromJson(Map<String, dynamic> json) {
  return _Transaction.fromJson(json);
}

/// @nodoc
mixin _$Transaction {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  String get prescriberuid => throw _privateConstructorUsedError;
  String get patientuid => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get patientFullname => throw _privateConstructorUsedError;
  String get prescriberFullname => throw _privateConstructorUsedError;
  String get transactionType => throw _privateConstructorUsedError;
  String get transactionAction => throw _privateConstructorUsedError;
  String get transactionRef => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionCopyWith<Transaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionCopyWith<$Res> {
  factory $TransactionCopyWith(
          Transaction value, $Res Function(Transaction) then) =
      _$TransactionCopyWithImpl<$Res, Transaction>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String prescriberuid,
      String patientuid,
      String status,
      String patientFullname,
      String prescriberFullname,
      String transactionType,
      String transactionAction,
      String transactionRef,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class _$TransactionCopyWithImpl<$Res, $Val extends Transaction>
    implements $TransactionCopyWith<$Res> {
  _$TransactionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? prescriberuid = null,
    Object? patientuid = null,
    Object? status = null,
    Object? patientFullname = null,
    Object? prescriberFullname = null,
    Object? transactionType = null,
    Object? transactionAction = null,
    Object? transactionRef = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      prescriberuid: null == prescriberuid
          ? _value.prescriberuid
          : prescriberuid // ignore: cast_nullable_to_non_nullable
              as String,
      patientuid: null == patientuid
          ? _value.patientuid
          : patientuid // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      patientFullname: null == patientFullname
          ? _value.patientFullname
          : patientFullname // ignore: cast_nullable_to_non_nullable
              as String,
      prescriberFullname: null == prescriberFullname
          ? _value.prescriberFullname
          : prescriberFullname // ignore: cast_nullable_to_non_nullable
              as String,
      transactionType: null == transactionType
          ? _value.transactionType
          : transactionType // ignore: cast_nullable_to_non_nullable
              as String,
      transactionAction: null == transactionAction
          ? _value.transactionAction
          : transactionAction // ignore: cast_nullable_to_non_nullable
              as String,
      transactionRef: null == transactionRef
          ? _value.transactionRef
          : transactionRef // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransactionImplCopyWith<$Res>
    implements $TransactionCopyWith<$Res> {
  factory _$$TransactionImplCopyWith(
          _$TransactionImpl value, $Res Function(_$TransactionImpl) then) =
      __$$TransactionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String prescriberuid,
      String patientuid,
      String status,
      String patientFullname,
      String prescriberFullname,
      String transactionType,
      String transactionAction,
      String transactionRef,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class __$$TransactionImplCopyWithImpl<$Res>
    extends _$TransactionCopyWithImpl<$Res, _$TransactionImpl>
    implements _$$TransactionImplCopyWith<$Res> {
  __$$TransactionImplCopyWithImpl(
      _$TransactionImpl _value, $Res Function(_$TransactionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? prescriberuid = null,
    Object? patientuid = null,
    Object? status = null,
    Object? patientFullname = null,
    Object? prescriberFullname = null,
    Object? transactionType = null,
    Object? transactionAction = null,
    Object? transactionRef = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$TransactionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      prescriberuid: null == prescriberuid
          ? _value.prescriberuid
          : prescriberuid // ignore: cast_nullable_to_non_nullable
              as String,
      patientuid: null == patientuid
          ? _value.patientuid
          : patientuid // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      patientFullname: null == patientFullname
          ? _value.patientFullname
          : patientFullname // ignore: cast_nullable_to_non_nullable
              as String,
      prescriberFullname: null == prescriberFullname
          ? _value.prescriberFullname
          : prescriberFullname // ignore: cast_nullable_to_non_nullable
              as String,
      transactionType: null == transactionType
          ? _value.transactionType
          : transactionType // ignore: cast_nullable_to_non_nullable
              as String,
      transactionAction: null == transactionAction
          ? _value.transactionAction
          : transactionAction // ignore: cast_nullable_to_non_nullable
              as String,
      transactionRef: null == transactionRef
          ? _value.transactionRef
          : transactionRef // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransactionImpl implements _Transaction {
  _$TransactionImpl(
      {@JsonKey(name: '_id') required this.id,
      required this.prescriberuid,
      required this.patientuid,
      required this.status,
      required this.patientFullname,
      required this.prescriberFullname,
      required this.transactionType,
      required this.transactionAction,
      required this.transactionRef,
      required this.createdAt,
      required this.updatedAt});

  factory _$TransactionImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransactionImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final String prescriberuid;
  @override
  final String patientuid;
  @override
  final String status;
  @override
  final String patientFullname;
  @override
  final String prescriberFullname;
  @override
  final String transactionType;
  @override
  final String transactionAction;
  @override
  final String transactionRef;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'Transaction(id: $id, prescriberuid: $prescriberuid, patientuid: $patientuid, status: $status, patientFullname: $patientFullname, prescriberFullname: $prescriberFullname, transactionType: $transactionType, transactionAction: $transactionAction, transactionRef: $transactionRef, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.prescriberuid, prescriberuid) ||
                other.prescriberuid == prescriberuid) &&
            (identical(other.patientuid, patientuid) ||
                other.patientuid == patientuid) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.patientFullname, patientFullname) ||
                other.patientFullname == patientFullname) &&
            (identical(other.prescriberFullname, prescriberFullname) ||
                other.prescriberFullname == prescriberFullname) &&
            (identical(other.transactionType, transactionType) ||
                other.transactionType == transactionType) &&
            (identical(other.transactionAction, transactionAction) ||
                other.transactionAction == transactionAction) &&
            (identical(other.transactionRef, transactionRef) ||
                other.transactionRef == transactionRef) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      prescriberuid,
      patientuid,
      status,
      patientFullname,
      prescriberFullname,
      transactionType,
      transactionAction,
      transactionRef,
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionImplCopyWith<_$TransactionImpl> get copyWith =>
      __$$TransactionImplCopyWithImpl<_$TransactionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransactionImplToJson(
      this,
    );
  }
}

abstract class _Transaction implements Transaction {
  factory _Transaction(
      {@JsonKey(name: '_id') required final String id,
      required final String prescriberuid,
      required final String patientuid,
      required final String status,
      required final String patientFullname,
      required final String prescriberFullname,
      required final String transactionType,
      required final String transactionAction,
      required final String transactionRef,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$TransactionImpl;

  factory _Transaction.fromJson(Map<String, dynamic> json) =
      _$TransactionImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String get prescriberuid;
  @override
  String get patientuid;
  @override
  String get status;
  @override
  String get patientFullname;
  @override
  String get prescriberFullname;
  @override
  String get transactionType;
  @override
  String get transactionAction;
  @override
  String get transactionRef;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$TransactionImplCopyWith<_$TransactionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
