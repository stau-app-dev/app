import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
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

/// Initialize the [FlutterLocalNotificationsPlugin] package.
late FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;

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
  flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
  await flutterLocalNotificationsPlugin.initialize(
    const InitializationSettings(
        android: AndroidInitializationSettings('drawable/ic_notification'),
        iOS: IOSInitializationSettings()),
  );
  await PushNotificationServiceRepository.initialize();
  await PushNotificationServiceRepository
      .setForegroundNotificationPresentationOptions();
  await PushNotificationServiceRepository.setAndroidNotificationChannel();

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
        value: SystemUiOverlayStyle.dark, child: Application()),
  ));
}

class Application extends StatefulWidget {
  const Application({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _Application();
}

class _Application extends State<Application> {
  @override
  void initState() {
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      RemoteNotification? notification = message.notification;
      AndroidNotification? android = message.notification?.android;
      if (notification != null && android != null && !kIsWeb) {
        flutterLocalNotificationsPlugin.show(
          notification.hashCode,
          notification.title,
          notification.body,
          const NotificationDetails(
            android: AndroidNotificationDetails(
              'high_importance_channel',
              'High Importance Notifications',
              icon: 'launch_background',
            ),
          ),
        );
      }
    });
    super.initState();
  }

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
