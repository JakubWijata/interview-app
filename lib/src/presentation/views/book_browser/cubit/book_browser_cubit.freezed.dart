// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_browser_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BookBrowserState {
  List<Book> get books => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String get query => throw _privateConstructorUsedError;
  Option<Failure> get failure => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  bool get hasMore => throw _privateConstructorUsedError;

  /// Create a copy of BookBrowserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookBrowserStateCopyWith<BookBrowserState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookBrowserStateCopyWith<$Res> {
  factory $BookBrowserStateCopyWith(
          BookBrowserState value, $Res Function(BookBrowserState) then) =
      _$BookBrowserStateCopyWithImpl<$Res, BookBrowserState>;
  @useResult
  $Res call(
      {List<Book> books,
      bool isLoading,
      String query,
      Option<Failure> failure,
      int page,
      bool hasMore});
}

/// @nodoc
class _$BookBrowserStateCopyWithImpl<$Res, $Val extends BookBrowserState>
    implements $BookBrowserStateCopyWith<$Res> {
  _$BookBrowserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookBrowserState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? books = null,
    Object? isLoading = null,
    Object? query = null,
    Object? failure = null,
    Object? page = null,
    Object? hasMore = null,
  }) {
    return _then(_value.copyWith(
      books: null == books
          ? _value.books
          : books // ignore: cast_nullable_to_non_nullable
              as List<Book>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Option<Failure>,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookBrowserStateImplCopyWith<$Res>
    implements $BookBrowserStateCopyWith<$Res> {
  factory _$$BookBrowserStateImplCopyWith(_$BookBrowserStateImpl value,
          $Res Function(_$BookBrowserStateImpl) then) =
      __$$BookBrowserStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Book> books,
      bool isLoading,
      String query,
      Option<Failure> failure,
      int page,
      bool hasMore});
}

/// @nodoc
class __$$BookBrowserStateImplCopyWithImpl<$Res>
    extends _$BookBrowserStateCopyWithImpl<$Res, _$BookBrowserStateImpl>
    implements _$$BookBrowserStateImplCopyWith<$Res> {
  __$$BookBrowserStateImplCopyWithImpl(_$BookBrowserStateImpl _value,
      $Res Function(_$BookBrowserStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookBrowserState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? books = null,
    Object? isLoading = null,
    Object? query = null,
    Object? failure = null,
    Object? page = null,
    Object? hasMore = null,
  }) {
    return _then(_$BookBrowserStateImpl(
      books: null == books
          ? _value._books
          : books // ignore: cast_nullable_to_non_nullable
              as List<Book>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Option<Failure>,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$BookBrowserStateImpl
    with DiagnosticableTreeMixin
    implements _BookBrowserState {
  const _$BookBrowserStateImpl(
      {required final List<Book> books,
      required this.isLoading,
      required this.query,
      required this.failure,
      required this.page,
      required this.hasMore})
      : _books = books;

  final List<Book> _books;
  @override
  List<Book> get books {
    if (_books is EqualUnmodifiableListView) return _books;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_books);
  }

  @override
  final bool isLoading;
  @override
  final String query;
  @override
  final Option<Failure> failure;
  @override
  final int page;
  @override
  final bool hasMore;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BookBrowserState(books: $books, isLoading: $isLoading, query: $query, failure: $failure, page: $page, hasMore: $hasMore)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BookBrowserState'))
      ..add(DiagnosticsProperty('books', books))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('query', query))
      ..add(DiagnosticsProperty('failure', failure))
      ..add(DiagnosticsProperty('page', page))
      ..add(DiagnosticsProperty('hasMore', hasMore));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookBrowserStateImpl &&
            const DeepCollectionEquality().equals(other._books, _books) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_books),
      isLoading,
      query,
      failure,
      page,
      hasMore);

  /// Create a copy of BookBrowserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookBrowserStateImplCopyWith<_$BookBrowserStateImpl> get copyWith =>
      __$$BookBrowserStateImplCopyWithImpl<_$BookBrowserStateImpl>(
          this, _$identity);
}

abstract class _BookBrowserState implements BookBrowserState {
  const factory _BookBrowserState(
      {required final List<Book> books,
      required final bool isLoading,
      required final String query,
      required final Option<Failure> failure,
      required final int page,
      required final bool hasMore}) = _$BookBrowserStateImpl;

  @override
  List<Book> get books;
  @override
  bool get isLoading;
  @override
  String get query;
  @override
  Option<Failure> get failure;
  @override
  int get page;
  @override
  bool get hasMore;

  /// Create a copy of BookBrowserState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookBrowserStateImplCopyWith<_$BookBrowserStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
