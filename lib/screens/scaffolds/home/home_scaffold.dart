import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:staugustinechsnewapp/models/cafe_menu/cafe_menu_item/cafe_menu_item.dart';
import 'package:staugustinechsnewapp/screens/main/home/home_screen.dart';
import 'package:staugustinechsnewapp/utilities/auth/auth_bloc.dart';
import 'package:staugustinechsnewapp/utilities/home/home_bloc.dart';
import 'package:staugustinechsnewapp/widgets/reusable/custom_snackbar.dart';

class HomeScaffold extends StatefulWidget {
  const HomeScaffold({Key? key}) : super(key: key);
  @override
  State<HomeScaffold> createState() => _HomeScaffoldState();
}

class _HomeScaffoldState extends State<HomeScaffold> {
  late HomeBloc homeBloc;

  @override
  void initState() {
    homeBloc = BlocProvider.of<HomeBloc>(context);
    onRefresh();
    super.initState();
  }

  void onRefresh() {
    homeBloc.add(const HomeEvent.getDayNumber());
    homeBloc.add(const HomeEvent.getGeneralAnnouncements());
    homeBloc.add(const HomeEvent.getSpiritMeters());
    homeBloc.add(const HomeEvent.getVerseOfDay());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(builder: (context, authState) {
      return BlocConsumer<HomeBloc, HomeState>(listenWhen: (previous, current) {
        return (previous.failure == null && current.failure != null);
      }, listener: (context, state) {
        if (state.failure != null) {
          useCustomSnackbar(
              context: context,
              message: state.failure!.message,
              type: ESnackBarType.error);
          homeBloc.add(const HomeEvent.resetFailSuccess());
        }
      }, builder: (context, homeState) {
        return HomeScreen(
          onRefresh: onRefresh,
          dayNumber: homeState.dayNumber,
          userName: authState.user?.displayName,
          generalAnnouncements: homeState.generalAnnouncements,
          featuredCafeItems: [],
          spiritMeters: homeState.spiritMeters,
          verseOfDay: homeState.verseOfDay,
        );
      });
    });
  }
}
