import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:interview_app/src/core/failure.dart';
import 'package:interview_app/src/data/data_sources/auth_data_source.dart';
import 'package:interview_app/src/domain/repositories/auth_repository/auth_status.dart';
import 'package:interview_app/src/domain/repositories/auth_repository/i_auth_repositories.dart';
import 'package:rxdart/rxdart.dart';

@Singleton(as: IAuthRepository)
class AuthRepository implements IAuthRepository {
  final IAuthDataSource _authDataSource;
  late final StreamSubscription<User?> _authStateSub;

  final _authStatusController =
      BehaviorSubject<AuthStatus>.seeded(AuthStatus.unauthenticated);

  AuthRepository(this._authDataSource) {
    _init();
  }

  Future<void> _init() async {
    _authStateSub =
        _authDataSource.authStateChanges.listen(_onAuthStateChangesListener);
    _onAuthStateChangesListener(_authDataSource.currentUser);
  }

  void _onAuthStateChangesListener(User? user) {
    _authStatusController.add(
      user == null ? AuthStatus.unauthenticated : AuthStatus.authenticated,
    );
  }

  @disposeMethod
  @override
  void dispose() {
    _authStateSub.cancel();
  }

  @override
  ValueStream<AuthStatus> authStatusChanges() => _authStatusController.stream;

  @override
  Future<Either<Failure, Unit>> signOut() async {
    try {
      await _authDataSource.signOut();
      return right(unit);
    } catch (e) {
      return left(Failure('Error signing out: $e'));
    }
  }
}
