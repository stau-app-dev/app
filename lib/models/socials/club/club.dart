import 'package:freezed_annotation/freezed_annotation.dart';
part 'club.freezed.dart';
part 'club.g.dart';

@freezed
class Club with _$Club {
  const factory Club({
    required String id,
    required List<String> admins,
    required String description,
    required int
        joinPreference, // 0 = no one can join, 1 = requires admin approval, 2 = anyone can join
    required List<String> members,
    required String name,
    required List<String> pending,
    required String pictureId,
    required String pictureUrl,
  }) = _Club;
  factory Club.fromJson(Map<String, dynamic> json) => _$ClubFromJson(json);
}
