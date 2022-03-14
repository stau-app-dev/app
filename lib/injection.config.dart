// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'providers/auth/auth_api.dart' as _i3;
import 'providers/auth/auth_repository.dart' as _i5;
import 'utilities/auth/auth_bloc.dart' as _i4;
import 'utilities/navigation/nav_bloc.dart'
    as _i6; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.AuthApi>(() => _i3.AuthApi());
  gh.factory<_i4.AuthBloc>(() => _i4.AuthBloc());
  gh.lazySingleton<_i5.AuthRepository>(() => _i5.AuthRepository());
  gh.factory<_i6.NavBloc>(() => _i6.NavBloc());
  return get;
}
