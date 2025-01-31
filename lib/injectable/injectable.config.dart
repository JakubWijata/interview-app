// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:interview_app/src/cubits/auth_status/auth_status_cubit.dart'
    as _i755;
import 'package:interview_app/src/repositories/auth_repository/auth_repository.dart'
    as _i287;
import 'package:interview_app/src/repositories/auth_repository/i_auth_repositories.dart'
    as _i641;

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
    gh.singleton<_i641.IAuthRepository>(
      () => _i287.AuthRepository(),
      dispose: (i) => i.dispose(),
    );
    gh.singleton<_i755.AuthStatusCubit>(
        () => _i755.AuthStatusCubit(gh<_i641.IAuthRepository>()));
    return this;
  }
}
