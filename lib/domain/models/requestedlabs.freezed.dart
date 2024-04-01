// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'requestedlabs.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequestedLabs _$RequestedLabsFromJson(Map<String, dynamic> json) {
  return _RequestedLabs.fromJson(json);
}

/// @nodoc
mixin _$RequestedLabs {
  String get orderedTestCode => throw _privateConstructorUsedError;
  String get orderedTestDescription => throw _privateConstructorUsedError;
  String get diagnosticService => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestedLabsCopyWith<RequestedLabs> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestedLabsCopyWith<$Res> {
  factory $RequestedLabsCopyWith(
          RequestedLabs value, $Res Function(RequestedLabs) then) =
      _$RequestedLabsCopyWithImpl<$Res, RequestedLabs>;
  @useResult
  $Res call(
      {String orderedTestCode,
      String orderedTestDescription,
      String diagnosticService});
}

/// @nodoc
class _$RequestedLabsCopyWithImpl<$Res, $Val extends RequestedLabs>
    implements $RequestedLabsCopyWith<$Res> {
  _$RequestedLabsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderedTestCode = null,
    Object? orderedTestDescription = null,
    Object? diagnosticService = null,
  }) {
    return _then(_value.copyWith(
      orderedTestCode: null == orderedTestCode
          ? _value.orderedTestCode
          : orderedTestCode // ignore: cast_nullable_to_non_nullable
              as String,
      orderedTestDescription: null == orderedTestDescription
          ? _value.orderedTestDescription
          : orderedTestDescription // ignore: cast_nullable_to_non_nullable
              as String,
      diagnosticService: null == diagnosticService
          ? _value.diagnosticService
          : diagnosticService // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestedLabsImplCopyWith<$Res>
    implements $RequestedLabsCopyWith<$Res> {
  factory _$$RequestedLabsImplCopyWith(
          _$RequestedLabsImpl value, $Res Function(_$RequestedLabsImpl) then) =
      __$$RequestedLabsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String orderedTestCode,
      String orderedTestDescription,
      String diagnosticService});
}

/// @nodoc
class __$$RequestedLabsImplCopyWithImpl<$Res>
    extends _$RequestedLabsCopyWithImpl<$Res, _$RequestedLabsImpl>
    implements _$$RequestedLabsImplCopyWith<$Res> {
  __$$RequestedLabsImplCopyWithImpl(
      _$RequestedLabsImpl _value, $Res Function(_$RequestedLabsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderedTestCode = null,
    Object? orderedTestDescription = null,
    Object? diagnosticService = null,
  }) {
    return _then(_$RequestedLabsImpl(
      orderedTestCode: null == orderedTestCode
          ? _value.orderedTestCode
          : orderedTestCode // ignore: cast_nullable_to_non_nullable
              as String,
      orderedTestDescription: null == orderedTestDescription
          ? _value.orderedTestDescription
          : orderedTestDescription // ignore: cast_nullable_to_non_nullable
              as String,
      diagnosticService: null == diagnosticService
          ? _value.diagnosticService
          : diagnosticService // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestedLabsImpl implements _RequestedLabs {
  _$RequestedLabsImpl(
      {required this.orderedTestCode,
      required this.orderedTestDescription,
      required this.diagnosticService});

  factory _$RequestedLabsImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestedLabsImplFromJson(json);

  @override
  final String orderedTestCode;
  @override
  final String orderedTestDescription;
  @override
  final String diagnosticService;

  @override
  String toString() {
    return 'RequestedLabs(orderedTestCode: $orderedTestCode, orderedTestDescription: $orderedTestDescription, diagnosticService: $diagnosticService)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestedLabsImpl &&
            (identical(other.orderedTestCode, orderedTestCode) ||
                other.orderedTestCode == orderedTestCode) &&
            (identical(other.orderedTestDescription, orderedTestDescription) ||
                other.orderedTestDescription == orderedTestDescription) &&
            (identical(other.diagnosticService, diagnosticService) ||
                other.diagnosticService == diagnosticService));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, orderedTestCode, orderedTestDescription, diagnosticService);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestedLabsImplCopyWith<_$RequestedLabsImpl> get copyWith =>
      __$$RequestedLabsImplCopyWithImpl<_$RequestedLabsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestedLabsImplToJson(
      this,
    );
  }
}

abstract class _RequestedLabs implements RequestedLabs {
  factory _RequestedLabs(
      {required final String orderedTestCode,
      required final String orderedTestDescription,
      required final String diagnosticService}) = _$RequestedLabsImpl;

  factory _RequestedLabs.fromJson(Map<String, dynamic> json) =
      _$RequestedLabsImpl.fromJson;

  @override
  String get orderedTestCode;
  @override
  String get orderedTestDescription;
  @override
  String get diagnosticService;
  @override
  @JsonKey(ignore: true)
  _$$RequestedLabsImplCopyWith<_$RequestedLabsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
