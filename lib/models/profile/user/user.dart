import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'user.freezed.dart';

@freezed
class User with _$User {
  const factory User({
    required String id,
    required List<String> badges,
    required List<String> courses,
    required List<String> clubs,
    required String email,
    required DateTime lastSubmittedSong,
    required List<String> msgTokens,
    required String name,
    required List<String> notifications,
    required int picture,
    required bool showBadges,
    required bool showCourses,
    required int status,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) {
    Timestamp lastSubmittedSong = Timestamp(
        json['lastSubmittedSong']['_seconds'],
        json['lastSubmittedSong']['_nanoseconds']);
    return User(
      id: json['id'] as String,
      badges:
          (json['badges'] as List<dynamic>).map((e) => e as String).toList(),
      courses:
          (json['courses'] as List<dynamic>).map((e) => e as String).toList(),
      clubs: (json['clubs'] as List<dynamic>).map((e) => e as String).toList(),
      email: json['email'] as String,
      lastSubmittedSong: lastSubmittedSong.toDate(),
      msgTokens:
          (json['msgTokens'] as List<dynamic>).map((e) => e as String).toList(),
      name: json['name'] as String,
      notifications: (json['notifications'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      picture: json['picture'] as int,
      showBadges: json['showBadges'] as bool,
      showCourses: json['showCourses'] as bool,
      status: json['status'] as int,
    );
  }
}
