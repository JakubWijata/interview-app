import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:mockito/mockito.dart';
import 'package:fpdart/fpdart.dart';
import 'package:interview_app/src/domain/repositories/auth_repository/i_auth_repositories.dart';
import 'package:interview_app/src/presentation/views/book_browser/sign_out_cubit/sign_out_cubit.dart';
import 'package:interview_app/src/core/failure.dart';

class MockAuthRepository extends Mock implements IAuthRepository {}

void main() {
  group('SignOutCubit', () {
    late MockAuthRepository mockAuthRepository;
    late SignOutCubit signOutCubit;
    final failure = Failure('Sign out failed');

    setUp(() {
      mockAuthRepository = MockAuthRepository();
      signOutCubit = SignOutCubit(mockAuthRepository);
    });

    tearDown(() {
      signOutCubit.close();
    });

    test('initial state is SignOutState.initial()', () {
      expect(signOutCubit.state, SignOutState.initial());
    });

    blocTest<SignOutCubit, SignOutState>(
      'emits [isLoading: true, isLoading: false, failure: none()] when signOut succeeds',
      build: () => signOutCubit,
      setUp: () => when(mockAuthRepository.signOut())
          .thenAnswer((_) async => right(unit)),
      verify: (_) {
        verify(mockAuthRepository.signOut()).called(1);
      },
      act: (cubit) => cubit.signOut(),
      expect: () => [
        SignOutState.initial().copyWith(isLoading: true),
        SignOutState.initial().copyWith(isLoading: false, failure: none()),
      ],
    );

    blocTest<SignOutCubit, SignOutState>(
      'emits [isLoading: true, isLoading: false, failure: some(failure)] when signOut fails',
      build: () => signOutCubit,
      setUp: () {
        when(mockAuthRepository.signOut())
            .thenAnswer((_) async => left(failure));
      },
      verify: (_) {
        verify(mockAuthRepository.signOut()).called(1);
      },
      act: (cubit) => cubit.signOut(),
      expect: () => [
        SignOutState.initial().copyWith(isLoading: true),
        SignOutState.initial()
            .copyWith(isLoading: false, failure: some(failure)),
      ],
    );
  });
}
