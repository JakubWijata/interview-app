import 'package:go_router/go_router.dart';
import 'package:interview_app/routing/app_routes.dart';
import 'package:interview_app/src/presentation/views/book_browser/book_browser_screen.dart';
import 'package:interview_app/src/presentation/views/sign_in_screen.dart';
import 'package:interview_app/src/presentation/views/splash_screen.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: AppRoutes.splash,
      builder: (context, state) => SplashScreen(),
    ),
    GoRoute(
      path: AppRoutes.signIn,
      builder: (context, state) => SignInScreen(),
    ),
    GoRoute(
      path: AppRoutes.bookBrowser,
      builder: (context, state) => BookBrowser(),
    ),
  ],
);
