// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'books_result_page_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BooksResultPageDTO _$BooksResultPageDTOFromJson(Map<String, dynamic> json) {
  return _BooksResultPageDTO.fromJson(json);
}

/// @nodoc
mixin _$BooksResultPageDTO {
  @JsonKey(name: 'docs')
  List<BookDTO> get books => throw _privateConstructorUsedError;
  int get start => throw _privateConstructorUsedError;
  int get numFound => throw _privateConstructorUsedError;

  /// Serializes this BooksResultPageDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BooksResultPageDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BooksResultPageDTOCopyWith<BooksResultPageDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BooksResultPageDTOCopyWith<$Res> {
  factory $BooksResultPageDTOCopyWith(
          BooksResultPageDTO value, $Res Function(BooksResultPageDTO) then) =
      _$BooksResultPageDTOCopyWithImpl<$Res, BooksResultPageDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'docs') List<BookDTO> books, int start, int numFound});
}

/// @nodoc
class _$BooksResultPageDTOCopyWithImpl<$Res, $Val extends BooksResultPageDTO>
    implements $BooksResultPageDTOCopyWith<$Res> {
  _$BooksResultPageDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BooksResultPageDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? books = null,
    Object? start = null,
    Object? numFound = null,
  }) {
    return _then(_value.copyWith(
      books: null == books
          ? _value.books
          : books // ignore: cast_nullable_to_non_nullable
              as List<BookDTO>,
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as int,
      numFound: null == numFound
          ? _value.numFound
          : numFound // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BooksResultPageDTOImplCopyWith<$Res>
    implements $BooksResultPageDTOCopyWith<$Res> {
  factory _$$BooksResultPageDTOImplCopyWith(_$BooksResultPageDTOImpl value,
          $Res Function(_$BooksResultPageDTOImpl) then) =
      __$$BooksResultPageDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'docs') List<BookDTO> books, int start, int numFound});
}

/// @nodoc
class __$$BooksResultPageDTOImplCopyWithImpl<$Res>
    extends _$BooksResultPageDTOCopyWithImpl<$Res, _$BooksResultPageDTOImpl>
    implements _$$BooksResultPageDTOImplCopyWith<$Res> {
  __$$BooksResultPageDTOImplCopyWithImpl(_$BooksResultPageDTOImpl _value,
      $Res Function(_$BooksResultPageDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of BooksResultPageDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? books = null,
    Object? start = null,
    Object? numFound = null,
  }) {
    return _then(_$BooksResultPageDTOImpl(
      books: null == books
          ? _value._books
          : books // ignore: cast_nullable_to_non_nullable
              as List<BookDTO>,
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as int,
      numFound: null == numFound
          ? _value.numFound
          : numFound // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BooksResultPageDTOImpl implements _BooksResultPageDTO {
  const _$BooksResultPageDTOImpl(
      {@JsonKey(name: 'docs') required final List<BookDTO> books,
      required this.start,
      required this.numFound})
      : _books = books;

  factory _$BooksResultPageDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$BooksResultPageDTOImplFromJson(json);

  final List<BookDTO> _books;
  @override
  @JsonKey(name: 'docs')
  List<BookDTO> get books {
    if (_books is EqualUnmodifiableListView) return _books;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_books);
  }

  @override
  final int start;
  @override
  final int numFound;

  @override
  String toString() {
    return 'BooksResultPageDTO(books: $books, start: $start, numFound: $numFound)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BooksResultPageDTOImpl &&
            const DeepCollectionEquality().equals(other._books, _books) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.numFound, numFound) ||
                other.numFound == numFound));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_books), start, numFound);

  /// Create a copy of BooksResultPageDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BooksResultPageDTOImplCopyWith<_$BooksResultPageDTOImpl> get copyWith =>
      __$$BooksResultPageDTOImplCopyWithImpl<_$BooksResultPageDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BooksResultPageDTOImplToJson(
      this,
    );
  }
}

abstract class _BooksResultPageDTO implements BooksResultPageDTO {
  const factory _BooksResultPageDTO(
      {@JsonKey(name: 'docs') required final List<BookDTO> books,
      required final int start,
      required final int numFound}) = _$BooksResultPageDTOImpl;

  factory _BooksResultPageDTO.fromJson(Map<String, dynamic> json) =
      _$BooksResultPageDTOImpl.fromJson;

  @override
  @JsonKey(name: 'docs')
  List<BookDTO> get books;
  @override
  int get start;
  @override
  int get numFound;

  /// Create a copy of BooksResultPageDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BooksResultPageDTOImplCopyWith<_$BooksResultPageDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
