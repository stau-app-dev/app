// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'providers/announcements/announcements_api.dart' as _i3;
import 'providers/announcements/announcements_repository.dart' as _i4;
import 'providers/auth/auth_api.dart' as _i5;
import 'providers/auth/auth_repository.dart' as _i7;
import 'utilities/auth/auth_bloc.dart' as _i6;
import 'utilities/home/home_bloc.dart' as _i8;
import 'utilities/navigation/nav_bloc.dart'
    as _i9; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.AnnouncementsApi>(() => _i3.AnnouncementsApi());
  gh.lazySingleton<_i4.AnnouncementsRepository>(
      () => _i4.AnnouncementsRepository());
  gh.factory<_i5.AuthApi>(() => _i5.AuthApi());
  gh.factory<_i6.AuthBloc>(() => _i6.AuthBloc());
  gh.lazySingleton<_i7.AuthRepository>(() => _i7.AuthRepository());
  gh.factory<_i8.HomeBloc>(() => _i8.HomeBloc());
  gh.factory<_i9.NavBloc>(() => _i9.NavBloc());
  return get;
}
