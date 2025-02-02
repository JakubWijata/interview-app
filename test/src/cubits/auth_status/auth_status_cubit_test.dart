import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:interview_app/src/presentation/auth_status/auth_status_cubit.dart';
import 'package:interview_app/src/domain/repositories/auth_repository/auth_status.dart';
import 'package:interview_app/src/domain/repositories/auth_repository/i_auth_repositories.dart';
import 'package:rxdart/streams.dart';
import 'package:rxdart/subjects.dart';

class MockAuthRepository extends Mock implements IAuthRepository {
  BehaviorSubject<AuthStatus> authStatusController = BehaviorSubject();

  @override
  ValueStream<AuthStatus> authStatusChanges() => authStatusController.stream;
}

void main() {
  late MockAuthRepository mockAuthRepository;
  late AuthStatusCubit authStatusCubit;

  setUp(() {
    mockAuthRepository = MockAuthRepository();
    mockAuthRepository.authStatusController.add(AuthStatus.unauthenticated);
    authStatusCubit = AuthStatusCubit(mockAuthRepository);
  });

  tearDown(() {
    authStatusCubit.close();
  });

  blocTest<AuthStatusCubit, AuthStatusState>(
    'verify initial state is [AuthStatusState.unauthenticated()]',
    verify: (bloc) => expect(bloc.state, AuthStatusState.unauthenticated()),
    build: () => authStatusCubit,
  );

  blocTest<AuthStatusCubit, AuthStatusState>(
    'emits [AuthStatusState.authenticated()] when auth status is change to authenticated',
    build: () => authStatusCubit,
    act: (bloc) =>
        mockAuthRepository.authStatusController.add(AuthStatus.authenticated),
    expect: () => [AuthStatusState.authenticated()],
  );
  blocTest<AuthStatusCubit, AuthStatusState>(
    'emits [AuthStatusState.authenticated(), AuthStatusState.unauthenticated()] when auth status is change to unauthenticated',
    build: () => authStatusCubit,
    act: (bloc) => mockAuthRepository.authStatusController
      ..add(AuthStatus.authenticated)
      ..add(AuthStatus.unauthenticated),
    expect: () => [
      AuthStatusState.authenticated(),
      AuthStatusState.unauthenticated(),
    ],
  );
}
