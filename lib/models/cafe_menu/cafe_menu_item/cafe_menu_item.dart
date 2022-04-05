import 'package:freezed_annotation/freezed_annotation.dart';
part 'cafe_menu_item.freezed.dart';
part 'cafe_menu_item.g.dart';

@freezed
class CafeMenuItem with _$CafeMenuItem {
  const factory CafeMenuItem({
    required String name,
    required String pictureId,
    required String pictureUrl,
    required String price,
    required bool isTodaySpecial,
  }) = _CafeMenuItem;
  factory CafeMenuItem.fromJson(Map<String, dynamic> json) =>
      _$CafeMenuItemFromJson(json);
}
