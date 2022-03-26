import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:staugustinechsnewapp/models/announcements/general_announcement/general_announcement.dart';
import 'package:staugustinechsnewapp/models/shared/failure/failure.dart';
import 'package:staugustinechsnewapp/providers/announcements/announcements_api.dart';

@lazySingleton
class AnnouncementsRepository {
  AnnouncementsRepository();

  static Future<Either<Failure, List<GeneralAnnouncement>>>
      getGeneralAnnouncements() async {
    return await AnnouncementsApi.getGeneralAnnouncements();
  }
}
