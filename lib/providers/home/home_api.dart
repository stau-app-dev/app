import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart';
import 'package:injectable/injectable.dart';
import 'package:staugustinechsnewapp/models/home/day_number/day_number.dart';
import 'package:staugustinechsnewapp/models/home/spirit_meters/spirit_meters.dart';
import 'package:staugustinechsnewapp/models/home/verse_of_day/verse_of_day.dart';
import 'package:staugustinechsnewapp/models/shared/failure/failure.dart';
import 'package:staugustinechsnewapp/providers/home/consts.dart';
import 'package:staugustinechsnewapp/providers/authclient.dart';

@Injectable()
class HomeApi {
  static Future<Either<Failure, int?>> getDayNumber() async {
    try {
      Response res = await authClient.get(Uri.parse(getDayNumberEndpoint));
      if (res.statusCode == 200) {
        int? dayNumber =
            DayNumber.fromJson(json.decode(res.body)['data']).dayNumber;
        return Right(dayNumber);
      } else {
        return const Left(Failure(message: errorGettingDayNumber));
      }
    } catch (e) {
      return const Left(Failure(message: errorGettingDayNumber));
    }
  }

  static Future<Either<Failure, SpiritMeters>> getSpiritMeters() async {
    try {
      Response res = await authClient.get(Uri.parse(getSpiritMetersEndpoint));
      if (res.statusCode == 200) {
        SpiritMeters spiritMeters =
            SpiritMeters.fromJson(json.decode(res.body)['data']);
        return Right(spiritMeters);
      } else {
        return const Left(Failure(message: errorGettingSpiritMeters));
      }
    } catch (e) {
      return const Left(Failure(message: errorGettingSpiritMeters));
    }
  }

  static Future<Either<Failure, VerseOfDay>> getVerseOfDay() async {
    try {
      Response res = await authClient.get(Uri.parse(getVerseOfDayEndpoint));
      if (res.statusCode == 200) {
        VerseOfDay verseOfDay =
            VerseOfDay.fromJson(json.decode(res.body)['data']);
        return Right(verseOfDay);
      } else {
        return const Left(Failure(message: errorGettingVerseOfDay));
      }
    } catch (e) {
      return const Left(Failure(message: errorGettingVerseOfDay));
    }
  }
}
