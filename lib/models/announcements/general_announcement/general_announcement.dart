import 'package:freezed_annotation/freezed_annotation.dart';
part 'general_announcement.freezed.dart';
part 'general_announcement.g.dart';

@freezed
class GeneralAnnouncement with _$GeneralAnnouncement {
  const factory GeneralAnnouncement({
    required String title,
    required String content,
  }) = _GeneralAnnouncement;
  factory GeneralAnnouncement.fromJson(Map<String, dynamic> json) =>
      _$GeneralAnnouncementFromJson(json);
}
