// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:project/core/services/user_service.dart' as _i376;
import 'package:project/features/sign_in/data/datasources/sign_in_remote_data_source.dart'
    as _i121;
import 'package:project/features/sign_in/data/repositories/sign_in_repository_data.dart'
    as _i255;
import 'package:project/features/sign_in/domain/repositories/sign_in_repository_domain.dart'
    as _i565;
import 'package:project/features/sign_in/domain/use_cases/sign_in_use_case.dart'
    as _i625;
import 'package:supabase_flutter/supabase_flutter.dart' as _i454;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt initSignIn({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i121.BaseSignInRemoteDataSource>(
      () => _i121.SignInRemoteDataSource(
        gh<_i454.SupabaseClient>(),
        gh<_i376.UserService>(),
      ),
    );
    gh.lazySingleton<_i565.SignInRepositoryDomain>(
      () => _i255.SignInRepositoryData(gh<_i121.BaseSignInRemoteDataSource>()),
    );
    gh.lazySingleton<_i625.SignInUseCase>(
      () => _i625.SignInUseCase(gh<_i565.SignInRepositoryDomain>()),
    );
    return this;
  }
}
