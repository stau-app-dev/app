import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:staugustinechsnewapp/providers/network.dart';
import 'package:staugustinechsnewapp/providers/notifications/push_notifications_repository.dart';
import 'package:staugustinechsnewapp/screens/main/home/home_screen.dart';
import 'package:staugustinechsnewapp/utilities/auth/auth_bloc.dart';
import 'package:staugustinechsnewapp/utilities/home/consts.dart';
import 'package:staugustinechsnewapp/utilities/home/home_bloc.dart';
import 'package:staugustinechsnewapp/utilities/navigation/nav_bloc.dart';
import 'package:staugustinechsnewapp/utilities/profile/consts.dart';
import 'package:staugustinechsnewapp/utilities/profile/profile_bloc.dart';
import 'package:staugustinechsnewapp/widgets/reusable/custom_snackbar.dart';

class HomeScaffold extends StatefulWidget {
  const HomeScaffold({Key? key}) : super(key: key);
  @override
  State<HomeScaffold> createState() => _HomeScaffoldState();
}

class _HomeScaffoldState extends State<HomeScaffold> {
  late HomeBloc homeBloc;
  late NavBloc navBloc;
  late ProfileBloc profileBloc;

  @override
  void initState() {
    homeBloc = BlocProvider.of<HomeBloc>(context);
    navBloc = BlocProvider.of<NavBloc>(context);
    profileBloc = BlocProvider.of<ProfileBloc>(context);
    onRefresh();
    super.initState();
  }

  void onRefresh() {
    profileBloc.add(const ProfileEvent.getFcmToken());
    homeBloc.add(const HomeEvent.getDayNumber());
    homeBloc.add(const HomeEvent.getGeneralAnnouncements());
    homeBloc.add(const HomeEvent.getFeaturedCafeMenuItems());
    homeBloc.add(const HomeEvent.getSpiritMeters());
    homeBloc.add(const HomeEvent.getVerseOfDay());
  }

  void onPressAddAnnouncementStaff() {
    launchURL(context: context, url: staffAddAnnouncementUrl);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(builder: (context, authState) {
      return BlocConsumer<ProfileBloc, ProfileState>(
          listenWhen: (previous, current) =>
              previous.user != current.user ||
              previous.fcmToken != current.fcmToken,
          listener: (context, profileState) {
            String fcmToken = profileState.fcmToken ?? '';
            if ((profileState.user != null && fcmToken != '') &&
                (!profileState.user!.msgTokens.contains(fcmToken))) {
              List<String> tokens = profileState.user!.msgTokens;
              tokens.add(fcmToken);
              profileBloc.add(ProfileEvent.updateUserField(
                  field: 'msgTokens', value: tokens));
              return;
            }
          },
          builder: (context, profileState) {
            return BlocConsumer<HomeBloc, HomeState>(
                listenWhen: (previous, current) {
              return (previous.failure == null && current.failure != null);
            }, listener: (context, state) {
              if (state.failure != null) {
                useCustomSnackbar(
                    context: context,
                    message: state.failure!.message,
                    type: ESnackBarType.failure);
                homeBloc.add(const HomeEvent.resetFailSuccess());
              }
            }, builder: (context, homeState) {
              return HomeScreen(
                onRefresh: onRefresh,
                navBloc: navBloc,
                dayNumber: homeState.dayNumber,
                userName: authState.user?.displayName,
                generalAnnouncements: homeState.generalAnnouncements,
                featuredCafeItems: homeState.featuredCafeMenuItems,
                spiritMeters: homeState.spiritMeters,
                verseOfDay: homeState.verseOfDay,
                onPressAddAnnouncementStaff:
                    profileState.user?.status == staffProfileStatus
                        ? onPressAddAnnouncementStaff
                        : null,
              );
            });
          });
    });
  }
}
