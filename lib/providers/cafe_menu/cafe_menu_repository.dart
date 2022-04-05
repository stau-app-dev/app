import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:staugustinechsnewapp/models/cafe_menu/cafe_menu_item/cafe_menu_item.dart';
import 'package:staugustinechsnewapp/models/shared/failure/failure.dart';
import 'package:staugustinechsnewapp/providers/cafe_menu/cafe_menu_api.dart';

@lazySingleton
class CafeMenuRepository {
  CafeMenuRepository();

  static Future<Either<Failure, List<CafeMenuItem>>> getCafeMenu(
      {required bool isTodaySpecial}) async {
    return await CafeMenuApi.getCafeMenuItems(isTodaySpecial: isTodaySpecial);
  }
}
