import 'package:dartz/dartz.dart';
import 'package:staugustinechsnewapp/models/shared/failure/failure.dart';
import 'package:staugustinechsnewapp/models/shared/success/success.dart';
import 'package:staugustinechsnewapp/providers/notifications/push_notifications_api.dart';

class PushNotificationServiceRepository {
  PushNotificationServiceRepository();

  static Future<Either<Failure, Success>> initialize() async {
    return await PushNotificationsApi.initialize();
  }

  static Future<Either<Failure, String>> getToken() async {
    return await PushNotificationsApi.getToken();
  }

  static Future<Either<Failure, Success>> subscribeToTopic(
      {required String topic}) async {
    return await PushNotificationsApi.subscribeToTopic(topic: topic);
  }

  static Future<Either<Failure, Success>> unsubscribeFromTopic(
      {required String topic}) async {
    return await PushNotificationsApi.unsubscribeFromTopic(topic: topic);
  }

  static Future<Either<Failure, Success>>
      setForegroundNotificationPresentationOptions(
          {required bool enabled}) async {
    return await PushNotificationsApi
        .setForegroundNotificationPresentationOptions(enabled: enabled);
  }
}
