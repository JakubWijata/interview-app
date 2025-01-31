import 'package:go_router/go_router.dart';
import 'package:interview_app/routing/app_routes.dart';
import 'package:interview_app/src/screens/home_screen.dart';
import 'package:interview_app/src/screens/sign_in_screen.dart';
import 'package:interview_app/src/screens/splash_screen.dart';

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
      path: AppRoutes.home,
      builder: (context, state) => HomeScreen(),
    ),
  ],
);
