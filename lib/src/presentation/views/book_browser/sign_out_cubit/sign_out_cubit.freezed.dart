// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_out_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignOutState {
  bool get isLoading => throw _privateConstructorUsedError;
  Option<Failure> get failure => throw _privateConstructorUsedError;

  /// Create a copy of SignOutState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SignOutStateCopyWith<SignOutState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignOutStateCopyWith<$Res> {
  factory $SignOutStateCopyWith(
          SignOutState value, $Res Function(SignOutState) then) =
      _$SignOutStateCopyWithImpl<$Res, SignOutState>;
  @useResult
  $Res call({bool isLoading, Option<Failure> failure});
}

/// @nodoc
class _$SignOutStateCopyWithImpl<$Res, $Val extends SignOutState>
    implements $SignOutStateCopyWith<$Res> {
  _$SignOutStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignOutState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? failure = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Option<Failure>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignOutStateImplCopyWith<$Res>
    implements $SignOutStateCopyWith<$Res> {
  factory _$$SignOutStateImplCopyWith(
          _$SignOutStateImpl value, $Res Function(_$SignOutStateImpl) then) =
      __$$SignOutStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, Option<Failure> failure});
}

/// @nodoc
class __$$SignOutStateImplCopyWithImpl<$Res>
    extends _$SignOutStateCopyWithImpl<$Res, _$SignOutStateImpl>
    implements _$$SignOutStateImplCopyWith<$Res> {
  __$$SignOutStateImplCopyWithImpl(
      _$SignOutStateImpl _value, $Res Function(_$SignOutStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignOutState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? failure = null,
  }) {
    return _then(_$SignOutStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Option<Failure>,
    ));
  }
}

/// @nodoc

class _$SignOutStateImpl implements _SignOutState {
  const _$SignOutStateImpl({required this.isLoading, required this.failure});

  @override
  final bool isLoading;
  @override
  final Option<Failure> failure;

  @override
  String toString() {
    return 'SignOutState(isLoading: $isLoading, failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignOutStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, failure);

  /// Create a copy of SignOutState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignOutStateImplCopyWith<_$SignOutStateImpl> get copyWith =>
      __$$SignOutStateImplCopyWithImpl<_$SignOutStateImpl>(this, _$identity);
}

abstract class _SignOutState implements SignOutState {
  const factory _SignOutState(
      {required final bool isLoading,
      required final Option<Failure> failure}) = _$SignOutStateImpl;

  @override
  bool get isLoading;
  @override
  Option<Failure> get failure;

  /// Create a copy of SignOutState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignOutStateImplCopyWith<_$SignOutStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
