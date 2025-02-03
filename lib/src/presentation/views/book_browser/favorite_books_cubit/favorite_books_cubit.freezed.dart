// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_books_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FavoriteBooksState {
  List<Book> get favoriteBooks => throw _privateConstructorUsedError;
  List<Book> get processingBooks => throw _privateConstructorUsedError;
  bool get isLoadingBooks => throw _privateConstructorUsedError;
  Option<Failure> get failureLoadingBooks => throw _privateConstructorUsedError;
  Option<Failure> get failureProcessingBooks =>
      throw _privateConstructorUsedError;

  /// Create a copy of FavoriteBooksState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FavoriteBooksStateCopyWith<FavoriteBooksState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteBooksStateCopyWith<$Res> {
  factory $FavoriteBooksStateCopyWith(
          FavoriteBooksState value, $Res Function(FavoriteBooksState) then) =
      _$FavoriteBooksStateCopyWithImpl<$Res, FavoriteBooksState>;
  @useResult
  $Res call(
      {List<Book> favoriteBooks,
      List<Book> processingBooks,
      bool isLoadingBooks,
      Option<Failure> failureLoadingBooks,
      Option<Failure> failureProcessingBooks});
}

/// @nodoc
class _$FavoriteBooksStateCopyWithImpl<$Res, $Val extends FavoriteBooksState>
    implements $FavoriteBooksStateCopyWith<$Res> {
  _$FavoriteBooksStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FavoriteBooksState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favoriteBooks = null,
    Object? processingBooks = null,
    Object? isLoadingBooks = null,
    Object? failureLoadingBooks = null,
    Object? failureProcessingBooks = null,
  }) {
    return _then(_value.copyWith(
      favoriteBooks: null == favoriteBooks
          ? _value.favoriteBooks
          : favoriteBooks // ignore: cast_nullable_to_non_nullable
              as List<Book>,
      processingBooks: null == processingBooks
          ? _value.processingBooks
          : processingBooks // ignore: cast_nullable_to_non_nullable
              as List<Book>,
      isLoadingBooks: null == isLoadingBooks
          ? _value.isLoadingBooks
          : isLoadingBooks // ignore: cast_nullable_to_non_nullable
              as bool,
      failureLoadingBooks: null == failureLoadingBooks
          ? _value.failureLoadingBooks
          : failureLoadingBooks // ignore: cast_nullable_to_non_nullable
              as Option<Failure>,
      failureProcessingBooks: null == failureProcessingBooks
          ? _value.failureProcessingBooks
          : failureProcessingBooks // ignore: cast_nullable_to_non_nullable
              as Option<Failure>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FavoriteBooksStateImplCopyWith<$Res>
    implements $FavoriteBooksStateCopyWith<$Res> {
  factory _$$FavoriteBooksStateImplCopyWith(_$FavoriteBooksStateImpl value,
          $Res Function(_$FavoriteBooksStateImpl) then) =
      __$$FavoriteBooksStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Book> favoriteBooks,
      List<Book> processingBooks,
      bool isLoadingBooks,
      Option<Failure> failureLoadingBooks,
      Option<Failure> failureProcessingBooks});
}

/// @nodoc
class __$$FavoriteBooksStateImplCopyWithImpl<$Res>
    extends _$FavoriteBooksStateCopyWithImpl<$Res, _$FavoriteBooksStateImpl>
    implements _$$FavoriteBooksStateImplCopyWith<$Res> {
  __$$FavoriteBooksStateImplCopyWithImpl(_$FavoriteBooksStateImpl _value,
      $Res Function(_$FavoriteBooksStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of FavoriteBooksState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favoriteBooks = null,
    Object? processingBooks = null,
    Object? isLoadingBooks = null,
    Object? failureLoadingBooks = null,
    Object? failureProcessingBooks = null,
  }) {
    return _then(_$FavoriteBooksStateImpl(
      favoriteBooks: null == favoriteBooks
          ? _value._favoriteBooks
          : favoriteBooks // ignore: cast_nullable_to_non_nullable
              as List<Book>,
      processingBooks: null == processingBooks
          ? _value._processingBooks
          : processingBooks // ignore: cast_nullable_to_non_nullable
              as List<Book>,
      isLoadingBooks: null == isLoadingBooks
          ? _value.isLoadingBooks
          : isLoadingBooks // ignore: cast_nullable_to_non_nullable
              as bool,
      failureLoadingBooks: null == failureLoadingBooks
          ? _value.failureLoadingBooks
          : failureLoadingBooks // ignore: cast_nullable_to_non_nullable
              as Option<Failure>,
      failureProcessingBooks: null == failureProcessingBooks
          ? _value.failureProcessingBooks
          : failureProcessingBooks // ignore: cast_nullable_to_non_nullable
              as Option<Failure>,
    ));
  }
}

/// @nodoc

class _$FavoriteBooksStateImpl implements _FavoriteBooksState {
  const _$FavoriteBooksStateImpl(
      {required final List<Book> favoriteBooks,
      required final List<Book> processingBooks,
      required this.isLoadingBooks,
      required this.failureLoadingBooks,
      required this.failureProcessingBooks})
      : _favoriteBooks = favoriteBooks,
        _processingBooks = processingBooks;

  final List<Book> _favoriteBooks;
  @override
  List<Book> get favoriteBooks {
    if (_favoriteBooks is EqualUnmodifiableListView) return _favoriteBooks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favoriteBooks);
  }

  final List<Book> _processingBooks;
  @override
  List<Book> get processingBooks {
    if (_processingBooks is EqualUnmodifiableListView) return _processingBooks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_processingBooks);
  }

  @override
  final bool isLoadingBooks;
  @override
  final Option<Failure> failureLoadingBooks;
  @override
  final Option<Failure> failureProcessingBooks;

  @override
  String toString() {
    return 'FavoriteBooksState(favoriteBooks: $favoriteBooks, processingBooks: $processingBooks, isLoadingBooks: $isLoadingBooks, failureLoadingBooks: $failureLoadingBooks, failureProcessingBooks: $failureProcessingBooks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoriteBooksStateImpl &&
            const DeepCollectionEquality()
                .equals(other._favoriteBooks, _favoriteBooks) &&
            const DeepCollectionEquality()
                .equals(other._processingBooks, _processingBooks) &&
            (identical(other.isLoadingBooks, isLoadingBooks) ||
                other.isLoadingBooks == isLoadingBooks) &&
            (identical(other.failureLoadingBooks, failureLoadingBooks) ||
                other.failureLoadingBooks == failureLoadingBooks) &&
            (identical(other.failureProcessingBooks, failureProcessingBooks) ||
                other.failureProcessingBooks == failureProcessingBooks));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_favoriteBooks),
      const DeepCollectionEquality().hash(_processingBooks),
      isLoadingBooks,
      failureLoadingBooks,
      failureProcessingBooks);

  /// Create a copy of FavoriteBooksState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoriteBooksStateImplCopyWith<_$FavoriteBooksStateImpl> get copyWith =>
      __$$FavoriteBooksStateImplCopyWithImpl<_$FavoriteBooksStateImpl>(
          this, _$identity);
}

abstract class _FavoriteBooksState implements FavoriteBooksState {
  const factory _FavoriteBooksState(
          {required final List<Book> favoriteBooks,
          required final List<Book> processingBooks,
          required final bool isLoadingBooks,
          required final Option<Failure> failureLoadingBooks,
          required final Option<Failure> failureProcessingBooks}) =
      _$FavoriteBooksStateImpl;

  @override
  List<Book> get favoriteBooks;
  @override
  List<Book> get processingBooks;
  @override
  bool get isLoadingBooks;
  @override
  Option<Failure> get failureLoadingBooks;
  @override
  Option<Failure> get failureProcessingBooks;

  /// Create a copy of FavoriteBooksState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FavoriteBooksStateImplCopyWith<_$FavoriteBooksStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
