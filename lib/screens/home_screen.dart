import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:staugustinechsnewapp/styles.dart';
import 'package:staugustinechsnewapp/utilities/auth/auth_bloc.dart';
import 'package:staugustinechsnewapp/utilities/navigation/nav_bloc.dart';
import 'package:staugustinechsnewapp/widgets/home/announcements_board.dart';
import 'package:staugustinechsnewapp/widgets/home/chaplaincy_corner.dart';
import 'package:staugustinechsnewapp/widgets/home/featured_cafe_items.dart';
import 'package:staugustinechsnewapp/widgets/home/spirit_meter.dart';
import 'package:staugustinechsnewapp/widgets/home/welcome_banner.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late AuthBloc authBloc;
  late NavBloc navBloc;

  List<Map<String, String>> sampleAnnouncements = [
    {
      'title': 'Announcement 1',
      'content': 'Nice',
    },
    {
      'title': 'St. Augustine CHS App Dev Team',
      'content': 'New App coming soon, check in for more updates',
    },
    {
      'title': 'Our Roots Club',
      'content':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    },
    {
      'title': 'Wow super long club name and or announcement title',
      'content':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    },
  ];

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
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(builder: (context, state) {
      if (state.isAuthenticated) {
        return SafeArea(
          child: ListView(
            padding: Styles.mainOutsidePadding,
            children: <Widget>[
              const SizedBox(height: Styles.mainVerticalPadding),
              const WelcomeBanner(),
              const SizedBox(height: Styles.mainSpacing),
              AnnouncementsBoard(
                announcements: sampleAnnouncements,
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
      } else {
        navBloc.add(const NavEvent.setNavbarVisible(isVisible: false));
        navBloc.add(const NavEvent.changeScreen(screen: ENav.login));
        return Container();
      }
    });
  }
}
