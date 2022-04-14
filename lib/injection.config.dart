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
import 'providers/cafe_menu/cafe_menu_api.dart' as _i8;
import 'providers/cafe_menu/cafe_menu_repository.dart' as _i10;
import 'providers/home/home_api.dart' as _i11;
import 'providers/home/home_repository.dart' as _i13;
import 'providers/image_upload/image_upload_api.dart' as _i14;
import 'providers/image_upload/image_upload_repository.dart' as _i15;
import 'providers/profile/profile_api.dart' as _i17;
import 'providers/profile/profile_repository.dart' as _i19;
import 'providers/socials/socials_api.dart' as _i20;
import 'providers/socials/socials_repository.dart' as _i22;
import 'providers/songs/songs_api.dart' as _i24;
import 'providers/songs/songs_repository.dart' as _i25;
import 'utilities/auth/auth_bloc.dart' as _i6;
import 'utilities/cafe_menu/cafe_menu_bloc.dart' as _i9;
import 'utilities/home/home_bloc.dart' as _i12;
import 'utilities/navigation/nav_bloc.dart' as _i16;
import 'utilities/profile/profile_bloc.dart' as _i18;
import 'utilities/socials/socials_bloc.dart' as _i21;
import 'utilities/songs/song_bloc.dart'
    as _i23; // ignore_for_file: unnecessary_lambdas

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
  gh.factory<_i8.CafeMenuApi>(() => _i8.CafeMenuApi());
  gh.factory<_i9.CafeMenuBloc>(() => _i9.CafeMenuBloc());
  gh.lazySingleton<_i10.CafeMenuRepository>(() => _i10.CafeMenuRepository());
  gh.factory<_i11.HomeApi>(() => _i11.HomeApi());
  gh.factory<_i12.HomeBloc>(() => _i12.HomeBloc());
  gh.lazySingleton<_i13.HomeRepository>(() => _i13.HomeRepository());
  gh.factory<_i14.ImageUploadApi>(() => _i14.ImageUploadApi());
  gh.lazySingleton<_i15.ImageUploadRepository>(
      () => _i15.ImageUploadRepository());
  gh.factory<_i16.NavBloc>(() => _i16.NavBloc());
  gh.factory<_i17.ProfileApi>(() => _i17.ProfileApi());
  gh.factory<_i18.ProfileBloc>(() => _i18.ProfileBloc());
  gh.lazySingleton<_i19.ProfileRepository>(() => _i19.ProfileRepository());
  gh.factory<_i20.SocialsApi>(() => _i20.SocialsApi());
  gh.factory<_i21.SocialsBloc>(() => _i21.SocialsBloc());
  gh.lazySingleton<_i22.SocialsRepository>(() => _i22.SocialsRepository());
  gh.factory<_i23.SongBloc>(() => _i23.SongBloc());
  gh.factory<_i24.SongsApi>(() => _i24.SongsApi());
  gh.lazySingleton<_i25.SongsRepository>(() => _i25.SongsRepository());
  return get;
}
