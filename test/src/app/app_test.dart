import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:interview_app/src/app/auth_navigation_helper.dart';
import 'package:interview_app/src/presentation/auth_status/auth_status_cubit.dart';
import 'package:interview_app/routing/app_routes.dart';
import 'package:mocktail/mocktail.dart';

class MockGoRouter extends Mock implements GoRouter {}

void main() {
  late MockGoRouter mockRouter;
  late AuthNavigationHelper authNavigationHelper;

  setUp(() {
    mockRouter = MockGoRouter();
    authNavigationHelper = AuthNavigationHelper(mockRouter);
  });

  test('navigateBasedOnAuthState navigates to home when authenticated', () {
    authNavigationHelper
        .navigateBasedOnAuthState(AuthStatusState.authenticated());

    verify(() => mockRouter.go(AppRoutes.bookBrowser)).called(1);
  });

  test('navigateBasedOnAuthState navigates to login when unauthenticated', () {
    authNavigationHelper
        .navigateBasedOnAuthState(AuthStatusState.unauthenticated());

    verify(() => mockRouter.go(AppRoutes.signIn)).called(1);
  });

  test('navigateBasedOnAuthState navigates to login when unknown', () {
    authNavigationHelper.navigateBasedOnAuthState(AuthStatusState.unknown());

    verify(() => mockRouter.go(AppRoutes.signIn)).called(1);
  });
}
