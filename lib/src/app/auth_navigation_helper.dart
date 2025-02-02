import 'package:go_router/go_router.dart';
import 'package:interview_app/routing/app_routes.dart';
import 'package:interview_app/src/presentation/auth_status/auth_status_cubit.dart';

class AuthNavigationHelper {
  final GoRouter router;

  AuthNavigationHelper(this.router);

  void navigateBasedOnAuthState(AuthStatusState state) {
    state.when(
      authenticated: () => router.go(AppRoutes.bookBrowser),
      unauthenticated: () => router.go(AppRoutes.signIn),
      unknown: () => router.go(AppRoutes.signIn),
    );
  }
}
