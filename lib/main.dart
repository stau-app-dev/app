import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:staugustinechsnewapp/injection.dart';
import 'package:staugustinechsnewapp/providers/notifications/push_notifications_repository.dart';
import 'package:staugustinechsnewapp/screens/screen_controller.dart';
import 'package:staugustinechsnewapp/theme/theme.dart';
import 'package:staugustinechsnewapp/utilities/auth/auth_bloc.dart';
import 'package:staugustinechsnewapp/utilities/cafe_menu/cafe_menu_bloc.dart';
import 'package:staugustinechsnewapp/utilities/home/home_bloc.dart';
import 'package:staugustinechsnewapp/utilities/navigation/nav_bloc.dart';
import 'package:staugustinechsnewapp/utilities/profile/profile_bloc.dart';
import 'package:staugustinechsnewapp/utilities/socials/socials_bloc.dart';
import 'package:staugustinechsnewapp/utilities/songs/song_bloc.dart';

/// Control the app's environment. Uncomment the dev line if you are running the backend locally.
const env = kReleaseMode ? Environment.prod : Environment.test;
// const env = Environment.dev;

void main() async {
  if (kDebugMode) {
    print('[ENV] Running in Environment: ' + env);
  }

  // Initialize the app
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies(env);
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // Push notifications
  await PushNotificationServiceRepository.initialize();

  // iOS will not automatically show the notification bar when the app loads.
  // To show the notification bar:
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
      overlays: [SystemUiOverlay.bottom, SystemUiOverlay.top]);

  // Wrap the app in a MultiBlocProvider so that the Blocs can be accessed from any part of the app
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider(create: (context) => getIt<AuthBloc>()),
      BlocProvider(create: (context) => getIt<CafeMenuBloc>()),
      BlocProvider(create: (context) => getIt<HomeBloc>()),
      BlocProvider(create: (context) => getIt<NavBloc>()),
      BlocProvider(create: (context) => getIt<ProfileBloc>()),
      BlocProvider(create: (context) => getIt<SocialsBloc>()),
      BlocProvider(create: (context) => getIt<SongBloc>()),
    ],
    child: const AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.dark, child: MyApp()),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'St Augustine CHS',
      theme: appThemeData,
      home: const ScreenController(),
    );
  }
}
