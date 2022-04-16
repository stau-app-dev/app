import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'club_announcement.freezed.dart';

@freezed
class ClubAnnouncement with _$ClubAnnouncement {
  const factory ClubAnnouncement({
    required String id,
    required String clubId,
    required String clubName,
    required String content,
    required DateTime createdAt,
    required String creatorName,
  }) = _ClubAnnouncement;

  factory ClubAnnouncement.fromJson(Map<String, dynamic> json) {
    Timestamp createdAt = Timestamp(
        json['createdAt']['_seconds'], json['createdAt']['_nanoseconds']);
    return ClubAnnouncement(
      id: json['id'] as String,
      clubId: json['clubId'] as String,
      clubName: json['clubName'] as String,
      content: json['content'] as String,
      createdAt: createdAt.toDate(),
      creatorName: json['creatorName'] as String,
    );
  }
}
