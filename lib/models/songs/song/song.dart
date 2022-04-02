import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'song.freezed.dart';

@freezed
class Song with _$Song {
  const factory Song({
    required String artist,
    required DateTime createdAt,
    required String creatorEmail,
    required String name,
    required int upvotes,
  }) = _Song;

  factory Song.fromJson(Map<String, dynamic> json) {
    Timestamp createdAt = Timestamp(
        json['createdAt']['_seconds'], json['createdAt']['_nanoseconds']);
    return Song(
      artist: json['artist'] as String,
      createdAt: createdAt.toDate(),
      creatorEmail: json['creatorEmail'] as String,
      name: json['name'] as String,
      upvotes: json['upvotes'] as int,
    );
  }
}
