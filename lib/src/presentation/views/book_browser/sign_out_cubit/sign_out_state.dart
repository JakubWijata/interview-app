part of 'sign_out_cubit.dart';

@freezed
class SignOutState with _$SignOutState {
  const factory SignOutState({
    required bool isLoading,
    required Option<Failure> failure,
  }) = _SignOutState;

  factory SignOutState.initial() => SignOutState(
        isLoading: false,
        failure: none(),
      );
}
