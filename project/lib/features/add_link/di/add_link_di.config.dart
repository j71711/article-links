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
import 'package:project/features/add_link/data/datasources/add_link_remote_data_source.dart'
    as _i1027;
import 'package:project/features/add_link/data/repositories/add_link_repository_data.dart'
    as _i540;
import 'package:project/features/add_link/domain/repositories/add_link_repository_domain.dart'
    as _i895;
import 'package:project/features/add_link/domain/use_cases/add_link_use_case.dart'
    as _i1055;
import 'package:supabase_flutter/supabase_flutter.dart' as _i454;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt initAddLink({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i1027.BaseAddLinkRemoteDataSource>(
      () => _i1027.AddLinkRemoteDataSource(
        gh<_i454.SupabaseClient>(),
        gh<_i376.UserService>(),
      ),
    );
    gh.lazySingleton<_i895.AddLinkRepositoryDomain>(
      () =>
          _i540.AddLinkRepositoryData(gh<_i1027.BaseAddLinkRemoteDataSource>()),
    );
    gh.lazySingleton<_i1055.AddLinkUseCase>(
      () => _i1055.AddLinkUseCase(gh<_i895.AddLinkRepositoryDomain>()),
    );
    return this;
  }
}
