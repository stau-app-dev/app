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
import 'providers/home/home_api.dart' as _i8;
import 'providers/home/home_repository.dart' as _i10;
import 'providers/songs/songs_api.dart' as _i13;
import 'providers/songs/songs_repository.dart' as _i14;
import 'utilities/auth/auth_bloc.dart' as _i6;
import 'utilities/home/home_bloc.dart' as _i9;
import 'utilities/navigation/nav_bloc.dart' as _i11;
import 'utilities/songs/song_bloc.dart'
    as _i12; // ignore_for_file: unnecessary_lambdas

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
  gh.factory<_i8.HomeApi>(() => _i8.HomeApi());
  gh.factory<_i9.HomeBloc>(() => _i9.HomeBloc());
  gh.lazySingleton<_i10.HomeRepository>(() => _i10.HomeRepository());
  gh.factory<_i11.NavBloc>(() => _i11.NavBloc());
  gh.factory<_i12.SongBloc>(() => _i12.SongBloc());
  gh.factory<_i13.SongsApi>(() => _i13.SongsApi());
  gh.lazySingleton<_i14.SongsRepository>(() => _i14.SongsRepository());
  return get;
}
