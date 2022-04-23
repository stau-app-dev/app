import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart';
import 'package:injectable/injectable.dart';
import 'package:staugustinechsnewapp/models/announcements/general_announcement/announcement.dart';
import 'package:staugustinechsnewapp/models/shared/failure/failure.dart';
import 'package:staugustinechsnewapp/providers/announcements/consts.dart';
import 'package:staugustinechsnewapp/providers/authclient.dart';

@Injectable()
class AnnouncementsApi {
  static Future<Either<Failure, List<Announcement>>>
      getGeneralAnnouncements() async {
    try {
      Response res =
          await authClient.get(Uri.parse(getGeneralAnnouncementsEndpoint));
      if (res.statusCode == 200) {
        List<dynamic> data = json.decode(res.body)['data'];
        List<Announcement> announcements = [];
        for (var i = 0; i < data.length; i++) {
          announcements.add(Announcement.fromJson(data[i]));
        }
        return Right(announcements);
      } else {
        return const Left(Failure(message: errorGettingGeneralAnnouncements));
      }
    } catch (e) {
      return const Left(Failure(message: errorGettingGeneralAnnouncements));
    }
  }
}
