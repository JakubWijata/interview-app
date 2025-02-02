import 'package:fpdart/fpdart.dart';
import 'package:interview_app/src/core/failure.dart';
import 'package:interview_app/src/domain/repositories/auth_repository/auth_status.dart';
import 'package:rxdart/streams.dart';

abstract class IAuthRepository {
  ValueStream<AuthStatus> authStatusChanges();
  Future<Either<Failure, Unit>> signOut();
  void dispose();
}
