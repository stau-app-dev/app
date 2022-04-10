import 'package:freezed_annotation/freezed_annotation.dart';
part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    required String id,
    required List<String> badges,
    required List<String> courses,
    required List<String> clubs,
    required String email,
    required List<String> msgTokens,
    required String name,
    required List<String> notifications,
    required int picture,
    required bool showBadges,
    required bool showCourses,
    required int status,
  }) = _User;
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
