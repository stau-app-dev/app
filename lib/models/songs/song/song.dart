import 'package:freezed_annotation/freezed_annotation.dart';
part 'song.freezed.dart';
part 'song.g.dart';

@freezed
class Song with _$Song {
  const factory Song({
    required String artist,
    required DateTime createdAt,
    required String creatorEmail,
    required String name,
    required int upvotes,
  }) = _Song;
  factory Song.fromJson(Map<String, dynamic> json) => _$SongFromJson(json);
}
