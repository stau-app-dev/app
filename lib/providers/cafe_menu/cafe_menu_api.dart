import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart';
import 'package:injectable/injectable.dart';
import 'package:staugustinechsnewapp/models/cafe_menu/cafe_menu_item/cafe_menu_item.dart';
import 'package:staugustinechsnewapp/models/shared/failure/failure.dart';
import 'package:staugustinechsnewapp/providers/cafe_menu/consts.dart';

@Injectable()
class CafeMenuApi {
  static Future<Either<Failure, List<CafeMenuItem>>> getCafeMenuItems(
      {required bool isTodaysSpecial}) async {
    try {
      var uri = Uri.parse(getCafeMenuItemsEndpoint);
      uri = uri.replace(queryParameters: {
        'isTodaysSpecial': isTodaysSpecial.toString(),
      });
      Response res = await get(uri);
      if (res.statusCode == 200) {
        List<dynamic> data = json.decode(res.body)['data'];
        List<CafeMenuItem> cafeMenuItems = [];
        for (var i = 0; i < data.length; i++) {
          cafeMenuItems.add(CafeMenuItem.fromJson(data[i]));
        }
        return Right(cafeMenuItems);
      } else {
        return const Left(Failure(message: errorGettingCafeMenuItems));
      }
    } catch (e) {
      return const Left(Failure(message: errorGettingCafeMenuItems));
    }
  }
}
