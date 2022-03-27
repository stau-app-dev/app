import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:staugustinechsnewapp/models/home/spirit_meters/spirit_meters.dart';
import 'package:staugustinechsnewapp/models/home/verse_of_day/verse_of_day.dart';
import 'package:staugustinechsnewapp/models/shared/failure/failure.dart';
import 'package:staugustinechsnewapp/providers/home/home_api.dart';

@lazySingleton
class HomeRepository {
  HomeRepository();

  static Future<Either<Failure, int?>> getDayNumber() async {
    return await HomeApi.getDayNumber();
  }

  static Future<Either<Failure, SpiritMeters>> getSpiritMeters() async {
    return await HomeApi.getSpiritMeters();
  }

  static Future<Either<Failure, VerseOfDay>> getVerseOfDay() async {
    return await HomeApi.getVerseOfDay();
  }
}
