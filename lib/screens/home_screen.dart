import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:staugustinechsnewapp/styles.dart';
import 'package:staugustinechsnewapp/utilities/auth/auth_bloc.dart';
import 'package:staugustinechsnewapp/utilities/home/home_bloc.dart';
import 'package:staugustinechsnewapp/utilities/navigation/nav_bloc.dart';
import 'package:staugustinechsnewapp/widgets/home/announcements_board.dart';
import 'package:staugustinechsnewapp/widgets/home/chaplaincy_corner.dart';
import 'package:staugustinechsnewapp/widgets/home/featured_cafe_items.dart';
import 'package:staugustinechsnewapp/widgets/home/spirit_meter.dart';
import 'package:staugustinechsnewapp/widgets/home/welcome_banner.dart';
import 'package:staugustinechsnewapp/widgets/reusable/custom_snackbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late AuthBloc authBloc;
  late NavBloc navBloc;
  late HomeBloc homeBloc;

  List<Map<String, String>> sampleVerses = [
    {
      'title': 'Verse of The Day',
      'content':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    },
  ];

  Map<int, double> sampleSpiritMeterData = {
    9: 40.0,
    10: 53.0,
    11: 66.0,
    12: 100.0,
  };

  List<Map<String, String>> sampleFeaturedCafeItems = [
    {
      'food': 'Caramel Latte',
      'image': 'assets/images/cat.jpg',
    },
    {
      'food': 'Mocha',
      'image': 'assets/images/cat.jpg',
    },
    {
      'food': 'Pumpkin Spice Latte with Vanilla Cream',
      'image': 'assets/images/cat.jpg',
    },
  ];

  @override
  void initState() {
    authBloc = BlocProvider.of<AuthBloc>(context);
    navBloc = BlocProvider.of<NavBloc>(context);
    homeBloc = BlocProvider.of<HomeBloc>(context);
    homeBloc.add(const HomeEvent.getGeneralAnnouncements());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(builder: (context, authState) {
      if (authState.isAuthenticated) {
        return BlocConsumer<HomeBloc, HomeState>(
            listenWhen: (previous, current) {
          return (previous.failure == null && current.failure != null);
        }, listener: (context, state) {
          if (state.failure != null) {
            useCustomSnackbar(
                context: context,
                message: state.failure!.message,
                isError: true);
            homeBloc.add(const HomeEvent.resetFailSuccess());
          }
        }, builder: (context, homeState) {
          return SafeArea(
            child: ListView(
              padding: Styles.mainOutsidePadding,
              children: <Widget>[
                const SizedBox(height: Styles.mainVerticalPadding),
                const WelcomeBanner(),
                const SizedBox(height: Styles.mainSpacing),
                AnnouncementsBoard(
                  announcements: homeState.generalAnnouncements,
                ),
                const SizedBox(height: Styles.mainSpacing),
                FeaturedCafeItems(cafeItems: sampleFeaturedCafeItems),
                const SizedBox(height: Styles.mainSpacing),
                SpiritMeter(
                  spiritMeterData: sampleSpiritMeterData,
                ),
                const SizedBox(height: Styles.mainSpacing),
                ChaplaincyCorner(verses: sampleVerses),
                const SizedBox(height: Styles.mainVerticalPadding),
              ],
            ),
          );
        });
      } else {
        navBloc.add(const NavEvent.setNavbarVisible(isVisible: false));
        navBloc.add(const NavEvent.changeScreen(screen: ENav.login));
        return Container();
      }
    });
  }
}
