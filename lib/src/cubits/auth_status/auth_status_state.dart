part of 'auth_status_cubit.dart';

@freezed
class AuthStatusState with _$AuthStatusState {
  const factory AuthStatusState.authenticated() = _Authenticated;
  const factory AuthStatusState.unknown() = _Unknown;
  const factory AuthStatusState.unauthenticated() = _Unauthenticated;
}
