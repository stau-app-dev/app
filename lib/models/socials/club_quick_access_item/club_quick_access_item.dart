import 'package:freezed_annotation/freezed_annotation.dart';
part 'club_quick_access_item.freezed.dart';
part 'club_quick_access_item.g.dart';

@freezed
class ClubQuickAccessItem with _$ClubQuickAccessItem {
  const factory ClubQuickAccessItem({
    required String id,
    required String name,
    required String pictureId,
    required String pictureUrl,
  }) = _ClubQuickAccessItem;
  factory ClubQuickAccessItem.fromJson(Map<String, dynamic> json) =>
      _$ClubQuickAccessItemFromJson(json);
}
