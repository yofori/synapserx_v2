// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'adimages.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ADImages _$ADImagesFromJson(Map<String, dynamic> json) {
  return _ADImages.fromJson(json);
}

/// @nodoc
mixin _$ADImages {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get urlToImage => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ADImagesCopyWith<ADImages> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ADImagesCopyWith<$Res> {
  factory $ADImagesCopyWith(ADImages value, $Res Function(ADImages) then) =
      _$ADImagesCopyWithImpl<$Res, ADImages>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String? description,
      String? urlToImage,
      String? url,
      String? title,
      String? status,
      String? content,
      String? createdAt,
      String? updatedAt});
}

/// @nodoc
class _$ADImagesCopyWithImpl<$Res, $Val extends ADImages>
    implements $ADImagesCopyWith<$Res> {
  _$ADImagesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? description = freezed,
    Object? urlToImage = freezed,
    Object? url = freezed,
    Object? title = freezed,
    Object? status = freezed,
    Object? content = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      urlToImage: freezed == urlToImage
          ? _value.urlToImage
          : urlToImage // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$ADImagesImplCopyWith<$Res>
    implements $ADImagesCopyWith<$Res> {
  factory _$$ADImagesImplCopyWith(
          _$ADImagesImpl value, $Res Function(_$ADImagesImpl) then) =
      __$$ADImagesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String? description,
      String? urlToImage,
      String? url,
      String? title,
      String? status,
      String? content,
      String? createdAt,
      String? updatedAt});
}

/// @nodoc
class __$$ADImagesImplCopyWithImpl<$Res>
    extends _$ADImagesCopyWithImpl<$Res, _$ADImagesImpl>
    implements _$$ADImagesImplCopyWith<$Res> {
  __$$ADImagesImplCopyWithImpl(
      _$ADImagesImpl _value, $Res Function(_$ADImagesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? description = freezed,
    Object? urlToImage = freezed,
    Object? url = freezed,
    Object? title = freezed,
    Object? status = freezed,
    Object? content = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$ADImagesImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      urlToImage: freezed == urlToImage
          ? _value.urlToImage
          : urlToImage // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$ADImagesImpl implements _ADImages {
  _$ADImagesImpl(
      {@JsonKey(name: '_id') required this.id,
      this.description,
      this.urlToImage,
      this.url,
      this.title,
      this.status,
      this.content,
      this.createdAt,
      this.updatedAt});

  factory _$ADImagesImpl.fromJson(Map<String, dynamic> json) =>
      _$$ADImagesImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final String? description;
  @override
  final String? urlToImage;
  @override
  final String? url;
  @override
  final String? title;
  @override
  final String? status;
  @override
  final String? content;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;

  @override
  String toString() {
    return 'ADImages(id: $id, description: $description, urlToImage: $urlToImage, url: $url, title: $title, status: $status, content: $content, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ADImagesImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.urlToImage, urlToImage) ||
                other.urlToImage == urlToImage) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, description, urlToImage, url,
      title, status, content, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ADImagesImplCopyWith<_$ADImagesImpl> get copyWith =>
      __$$ADImagesImplCopyWithImpl<_$ADImagesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ADImagesImplToJson(
      this,
    );
  }
}

abstract class _ADImages implements ADImages {
  factory _ADImages(
      {@JsonKey(name: '_id') required final String id,
      final String? description,
      final String? urlToImage,
      final String? url,
      final String? title,
      final String? status,
      final String? content,
      final String? createdAt,
      final String? updatedAt}) = _$ADImagesImpl;

  factory _ADImages.fromJson(Map<String, dynamic> json) =
      _$ADImagesImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String? get description;
  @override
  String? get urlToImage;
  @override
  String? get url;
  @override
  String? get title;
  @override
  String? get status;
  @override
  String? get content;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$ADImagesImplCopyWith<_$ADImagesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
