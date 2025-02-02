// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BookDTO _$BookDTOFromJson(Map<String, dynamic> json) {
  return _BookDto.fromJson(json);
}

/// @nodoc
mixin _$BookDTO {
  String get key => throw _privateConstructorUsedError;
  @JsonKey(name: 'author_name', defaultValue: [])
  List<String> get authorName => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  /// Serializes this BookDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BookDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookDTOCopyWith<BookDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookDTOCopyWith<$Res> {
  factory $BookDTOCopyWith(BookDTO value, $Res Function(BookDTO) then) =
      _$BookDTOCopyWithImpl<$Res, BookDTO>;
  @useResult
  $Res call(
      {String key,
      @JsonKey(name: 'author_name', defaultValue: []) List<String> authorName,
      String title});
}

/// @nodoc
class _$BookDTOCopyWithImpl<$Res, $Val extends BookDTO>
    implements $BookDTOCopyWith<$Res> {
  _$BookDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? authorName = null,
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      authorName: null == authorName
          ? _value.authorName
          : authorName // ignore: cast_nullable_to_non_nullable
              as List<String>,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookDtoImplCopyWith<$Res> implements $BookDTOCopyWith<$Res> {
  factory _$$BookDtoImplCopyWith(
          _$BookDtoImpl value, $Res Function(_$BookDtoImpl) then) =
      __$$BookDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String key,
      @JsonKey(name: 'author_name', defaultValue: []) List<String> authorName,
      String title});
}

/// @nodoc
class __$$BookDtoImplCopyWithImpl<$Res>
    extends _$BookDTOCopyWithImpl<$Res, _$BookDtoImpl>
    implements _$$BookDtoImplCopyWith<$Res> {
  __$$BookDtoImplCopyWithImpl(
      _$BookDtoImpl _value, $Res Function(_$BookDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? authorName = null,
    Object? title = null,
  }) {
    return _then(_$BookDtoImpl(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      authorName: null == authorName
          ? _value._authorName
          : authorName // ignore: cast_nullable_to_non_nullable
              as List<String>,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookDtoImpl implements _BookDto {
  const _$BookDtoImpl(
      {required this.key,
      @JsonKey(name: 'author_name', defaultValue: [])
      required final List<String> authorName,
      required this.title})
      : _authorName = authorName;

  factory _$BookDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookDtoImplFromJson(json);

  @override
  final String key;
  final List<String> _authorName;
  @override
  @JsonKey(name: 'author_name', defaultValue: [])
  List<String> get authorName {
    if (_authorName is EqualUnmodifiableListView) return _authorName;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_authorName);
  }

  @override
  final String title;

  @override
  String toString() {
    return 'BookDTO(key: $key, authorName: $authorName, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookDtoImpl &&
            (identical(other.key, key) || other.key == key) &&
            const DeepCollectionEquality()
                .equals(other._authorName, _authorName) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, key,
      const DeepCollectionEquality().hash(_authorName), title);

  /// Create a copy of BookDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookDtoImplCopyWith<_$BookDtoImpl> get copyWith =>
      __$$BookDtoImplCopyWithImpl<_$BookDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookDtoImplToJson(
      this,
    );
  }
}

abstract class _BookDto implements BookDTO {
  const factory _BookDto(
      {required final String key,
      @JsonKey(name: 'author_name', defaultValue: [])
      required final List<String> authorName,
      required final String title}) = _$BookDtoImpl;

  factory _BookDto.fromJson(Map<String, dynamic> json) = _$BookDtoImpl.fromJson;

  @override
  String get key;
  @override
  @JsonKey(name: 'author_name', defaultValue: [])
  List<String> get authorName;
  @override
  String get title;

  /// Create a copy of BookDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookDtoImplCopyWith<_$BookDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
