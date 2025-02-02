import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:interview_app/injectable/injectable.dart';
import 'package:interview_app/routing/router.dart';
import 'package:interview_app/src/app/auth_navigation_helper.dart';
import 'package:interview_app/src/presentation/auth_status/auth_status_cubit.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => _initNavigation(),
    );
  }

  void _initNavigation() => _navigateBaseOnAuthState(
        getIt<AuthStatusCubit>().state,
      );

  void _onAuthStateChangesListener(
    AuthStatusState state,
  ) =>
      _navigateBaseOnAuthState(state);

  void _navigateBaseOnAuthState(
    AuthStatusState state,
  ) =>
      AuthNavigationHelper(router).navigateBasedOnAuthState(state);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AuthStatusCubit>(),
      child: BlocListener<AuthStatusCubit, AuthStatusState>(
        listener: (_, state) => _onAuthStateChangesListener(state),
        child: MaterialApp.router(
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.deepPurple,
            ),
            useMaterial3: true,
          ),
          routerConfig: router,
        ),
      ),
    );
  }
}
