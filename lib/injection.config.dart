// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as i1;
import 'package:injectable/injectable.dart' as i2;

import 'providers/announcements/announcements_api.dart' as i3;
import 'providers/announcements/announcements_repository.dart' as i4;
import 'providers/auth/auth_api.dart' as i5;
import 'providers/auth/auth_repository.dart' as i7;
import 'providers/cafe_menu/cafe_menu_api.dart' as i8;
import 'providers/cafe_menu/cafe_menu_repository.dart' as i10;
import 'providers/home/home_api.dart' as i11;
import 'providers/home/home_repository.dart' as i13;
import 'providers/image_upload/image_upload_api.dart' as i14;
import 'providers/image_upload/image_upload_repository.dart' as i15;
import 'providers/notifications/push_notifications_api.dart' as i20;
import 'providers/profile/profile_api.dart' as i17;
import 'providers/profile/profile_repository.dart' as i19;
import 'providers/socials/socials_api.dart' as i21;
import 'providers/socials/socials_repository.dart' as i23;
import 'providers/songs/songs_api.dart' as i25;
import 'providers/songs/songs_repository.dart' as i26;
import 'utilities/auth/auth_bloc.dart' as i6;
import 'utilities/cafe_menu/cafe_menu_bloc.dart' as i9;
import 'utilities/home/home_bloc.dart' as i12;
import 'utilities/navigation/nav_bloc.dart' as i16;
import 'utilities/profile/profile_bloc.dart' as i18;
import 'utilities/socials/socials_bloc.dart' as i22;
import 'utilities/songs/song_bloc.dart'
    as i24; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
i1.GetIt $initGetIt(i1.GetIt get,
    {String? environment, i2.EnvironmentFilter? environmentFilter}) {
  final gh = i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<i3.AnnouncementsApi>(() => i3.AnnouncementsApi());
  gh.lazySingleton<i4.AnnouncementsRepository>(
      () => i4.AnnouncementsRepository());
  gh.factory<i5.AuthApi>(() => i5.AuthApi());
  gh.factory<i6.AuthBloc>(() => i6.AuthBloc());
  gh.lazySingleton<i7.AuthRepository>(() => i7.AuthRepository());
  gh.factory<i8.CafeMenuApi>(() => i8.CafeMenuApi());
  gh.factory<i9.CafeMenuBloc>(() => i9.CafeMenuBloc());
  gh.lazySingleton<i10.CafeMenuRepository>(() => i10.CafeMenuRepository());
  gh.factory<i11.HomeApi>(() => i11.HomeApi());
  gh.factory<i12.HomeBloc>(() => i12.HomeBloc());
  gh.lazySingleton<i13.HomeRepository>(() => i13.HomeRepository());
  gh.factory<i14.ImageUploadApi>(() => i14.ImageUploadApi());
  gh.lazySingleton<i15.ImageUploadRepository>(
      () => i15.ImageUploadRepository());
  gh.factory<i16.NavBloc>(() => i16.NavBloc());
  gh.factory<i17.ProfileApi>(() => i17.ProfileApi());
  gh.factory<i18.ProfileBloc>(() => i18.ProfileBloc());
  gh.lazySingleton<i19.ProfileRepository>(() => i19.ProfileRepository());
  gh.factory<i20.PushNotificationsApi>(() => i20.PushNotificationsApi());
  gh.factory<i21.SocialsApi>(() => i21.SocialsApi());
  gh.factory<i22.SocialsBloc>(() => i22.SocialsBloc());
  gh.lazySingleton<i23.SocialsRepository>(() => i23.SocialsRepository());
  gh.factory<i24.SongBloc>(() => i24.SongBloc());
  gh.factory<i25.SongsApi>(() => i25.SongsApi());
  gh.lazySingleton<i26.SongsRepository>(() => i26.SongsRepository());
  return get;
}
