// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'result_page.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ResultPage<T> {
  List<T> get items => throw _privateConstructorUsedError;
  bool get hasMore => throw _privateConstructorUsedError;

  /// Create a copy of ResultPage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResultPageCopyWith<T, ResultPage<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultPageCopyWith<T, $Res> {
  factory $ResultPageCopyWith(
          ResultPage<T> value, $Res Function(ResultPage<T>) then) =
      _$ResultPageCopyWithImpl<T, $Res, ResultPage<T>>;
  @useResult
  $Res call({List<T> items, bool hasMore});
}

/// @nodoc
class _$ResultPageCopyWithImpl<T, $Res, $Val extends ResultPage<T>>
    implements $ResultPageCopyWith<T, $Res> {
  _$ResultPageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResultPage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? hasMore = null,
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<T>,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResultPageImplCopyWith<T, $Res>
    implements $ResultPageCopyWith<T, $Res> {
  factory _$$ResultPageImplCopyWith(
          _$ResultPageImpl<T> value, $Res Function(_$ResultPageImpl<T>) then) =
      __$$ResultPageImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({List<T> items, bool hasMore});
}

/// @nodoc
class __$$ResultPageImplCopyWithImpl<T, $Res>
    extends _$ResultPageCopyWithImpl<T, $Res, _$ResultPageImpl<T>>
    implements _$$ResultPageImplCopyWith<T, $Res> {
  __$$ResultPageImplCopyWithImpl(
      _$ResultPageImpl<T> _value, $Res Function(_$ResultPageImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ResultPage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? hasMore = null,
  }) {
    return _then(_$ResultPageImpl<T>(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<T>,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ResultPageImpl<T> implements _ResultPage<T> {
  const _$ResultPageImpl({required final List<T> items, required this.hasMore})
      : _items = items;

  final List<T> _items;
  @override
  List<T> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final bool hasMore;

  @override
  String toString() {
    return 'ResultPage<$T>(items: $items, hasMore: $hasMore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultPageImpl<T> &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_items), hasMore);

  /// Create a copy of ResultPage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultPageImplCopyWith<T, _$ResultPageImpl<T>> get copyWith =>
      __$$ResultPageImplCopyWithImpl<T, _$ResultPageImpl<T>>(this, _$identity);
}

abstract class _ResultPage<T> implements ResultPage<T> {
  const factory _ResultPage(
      {required final List<T> items,
      required final bool hasMore}) = _$ResultPageImpl<T>;

  @override
  List<T> get items;
  @override
  bool get hasMore;

  /// Create a copy of ResultPage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResultPageImplCopyWith<T, _$ResultPageImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
