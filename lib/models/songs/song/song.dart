import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'song.freezed.dart';

@freezed
class Song with _$Song {
  const factory Song({
    required String id,
    required String artist,
    required DateTime createdAt,
    required String creatorEmail,
    required String name,
    required int upvotes,
    bool? upvoted,
  }) = _Song;

  factory Song.fromJson(Map<String, dynamic> json) {
    Timestamp createdAt = Timestamp(
        json['createdAt']['_seconds'], json['createdAt']['_nanoseconds']);
    return Song(
      id: json['id'] as String,
      artist: json['artist'] as String,
      createdAt: createdAt.toDate(),
      creatorEmail: json['creatorEmail'] as String,
      name: json['name'] as String,
      upvotes: json['upvotes'] as int,
      upvoted: (json['upvoted'] ?? 'false') == 'true',
    );
  }

  static Map<String, dynamic> toJson(Song song) {
    return {
      'id': song.id,
      'artist': song.artist,
      'createdAt': {
        '_seconds': song.createdAt.millisecondsSinceEpoch ~/ 1000,
        '_nanoseconds': song.createdAt.millisecondsSinceEpoch % 1000 * 1000000,
      },
      'creatorEmail': song.creatorEmail,
      'name': song.name,
      'upvotes': song.upvotes,
      'upvoted': song.upvoted,
    };
  }
}
