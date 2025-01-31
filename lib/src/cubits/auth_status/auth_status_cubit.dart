import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:interview_app/src/repositories/auth_repository/auth_status.dart';
import 'package:interview_app/src/repositories/auth_repository/i_auth_repositories.dart';

part 'auth_status_state.dart';
part 'auth_status_cubit.freezed.dart';

@Singleton()
class AuthStatusCubit extends Cubit<AuthStatusState> {
  AuthStatusCubit(this._authRepository)
      : super(
          AuthStatusState.unknown(),
        ) {
    _init();
  }

  late final StreamSubscription<AuthStatus> _authStatusSub;
  final IAuthRepository _authRepository;

  void _init() {
    _authStatusSub =
        _authRepository.authStatusChanges().listen(_onAuthStateChangesListener);
  }

  Future<void> _onAuthStateChangesListener(AuthStatus status) async {
    emit(
      switch (status) {
        AuthStatus.authenticated => AuthStatusState.authenticated(),
        AuthStatus.unauthenticated => AuthStatusState.unauthenticated(),
      },
    );
  }

  @override
  Future<void> close() {
    _authStatusSub.cancel();
    return super.close();
  }
}
