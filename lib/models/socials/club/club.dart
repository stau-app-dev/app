import 'package:freezed_annotation/freezed_annotation.dart';
part 'club.freezed.dart';
part 'club.g.dart';

@freezed
class Club with _$Club {
  const factory Club({
    required String id,
    required List<String> admins,
    required String description,
    required List<String> members,
    required String name,
    required List<String> pending,
    required String pictureUrl,
    required int joinPreference,
  }) = _Club;
  factory Club.fromJson(Map<String, dynamic> json) => _$ClubFromJson(json);
}
