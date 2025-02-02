// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:interview_app/src/data/network/api_client.dart' as _i114;
import 'package:interview_app/src/data/repositories_implementations/auth_repository.dart'
    as _i391;
import 'package:interview_app/src/data/repositories_implementations/books_repository.dart'
    as _i256;
import 'package:interview_app/src/domain/repositories/auth_repository/i_auth_repositories.dart'
    as _i739;
import 'package:interview_app/src/presentation/auth_status/auth_status_cubit.dart'
    as _i300;
import 'package:interview_app/src/presentation/views/book_browser/cubit/book_browser_cubit.dart'
    as _i620;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.lazySingleton<_i361.Dio>(() => registerModule.dio);
    gh.lazySingleton<_i114.ApiClient>(() => registerModule.apiClient);
    gh.singleton<_i739.IAuthRepository>(
      () => _i391.AuthRepository(),
      dispose: (i) => i.dispose(),
    );
    gh.singleton<_i300.AuthStatusCubit>(
        () => _i300.AuthStatusCubit(gh<_i739.IAuthRepository>()));
    gh.singleton<_i256.BooksRepository>(
        () => _i256.BooksRepository(gh<_i114.ApiClient>()));
    gh.factory<_i620.BookBrowserCubit>(
        () => _i620.BookBrowserCubit(gh<_i256.BooksRepository>()));
    return this;
  }
}

class _$RegisterModule extends _i114.RegisterModule {}
