// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i974;
import 'package:dio/dio.dart' as _i361;
import 'package:firebase_auth/firebase_auth.dart' as _i59;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:interview_app/src/data/data_sources/auth_data_source.dart'
    as _i151;
import 'package:interview_app/src/data/data_sources/books_data_source.dart'
    as _i1014;
import 'package:interview_app/src/data/data_sources/firebase_module.dart'
    as _i973;
import 'package:interview_app/src/data/network/api_client.dart' as _i114;
import 'package:interview_app/src/data/repositories_implementations/auth_repository.dart'
    as _i391;
import 'package:interview_app/src/data/repositories_implementations/books_repository.dart'
    as _i256;
import 'package:interview_app/src/domain/repositories/auth_repository/i_auth_repositories.dart'
    as _i739;
import 'package:interview_app/src/domain/repositories/books_repository/i_books_repository.dart'
    as _i686;
import 'package:interview_app/src/presentation/auth_status/auth_status_cubit.dart'
    as _i300;
import 'package:interview_app/src/presentation/views/book_browser/book_browser_cubit/book_browser_cubit.dart'
    as _i872;
import 'package:interview_app/src/presentation/views/book_browser/favorite_books_cubit/favorite_books_cubit.dart'
    as _i851;
import 'package:interview_app/src/presentation/views/book_browser/sign_out_cubit/sign_out_cubit.dart'
    as _i524;

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
    final registerFirebaseModule = _$RegisterFirebaseModule();
    gh.lazySingleton<_i361.Dio>(() => registerModule.dio);
    gh.lazySingleton<_i114.ApiClient>(() => registerModule.apiClient);
    gh.lazySingleton<_i59.FirebaseAuth>(
        () => registerFirebaseModule.firebaseAuth);
    gh.lazySingleton<_i974.FirebaseFirestore>(
        () => registerFirebaseModule.firebaseFirestore);
    gh.lazySingleton<_i1014.IBooksDataSource>(
        () => _i1014.FirebaseBooksDataSource(gh<_i974.FirebaseFirestore>()));
    gh.lazySingleton<_i151.IAuthDataSource>(
        () => _i151.AuthRepository(gh<_i59.FirebaseAuth>()));
    gh.singleton<_i739.IAuthRepository>(
      () => _i391.AuthRepository(gh<_i151.IAuthDataSource>()),
      dispose: (i) => i.dispose(),
    );
    gh.singleton<_i300.AuthStatusCubit>(
        () => _i300.AuthStatusCubit(gh<_i739.IAuthRepository>()));
    gh.factory<_i524.SignOutCubit>(
        () => _i524.SignOutCubit(gh<_i739.IAuthRepository>()));
    gh.singleton<_i686.IBooksRepository>(() => _i256.BooksRepository(
          gh<_i114.ApiClient>(),
          gh<_i1014.IBooksDataSource>(),
          gh<_i151.IAuthDataSource>(),
        ));
    gh.factory<_i872.BookBrowserCubit>(
        () => _i872.BookBrowserCubit(gh<_i686.IBooksRepository>()));
    gh.factory<_i851.FavoriteBooksCubit>(
        () => _i851.FavoriteBooksCubit(gh<_i686.IBooksRepository>()));
    return this;
  }
}

class _$RegisterModule extends _i114.RegisterModule {}

class _$RegisterFirebaseModule extends _i973.RegisterFirebaseModule {}
