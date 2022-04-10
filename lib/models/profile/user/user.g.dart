// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id: json['id'] as String,
      badges:
          (json['badges'] as List<dynamic>).map((e) => e as String).toList(),
      courses:
          (json['courses'] as List<dynamic>).map((e) => e as String).toList(),
      clubs: (json['clubs'] as List<dynamic>).map((e) => e as String).toList(),
      email: json['email'] as String,
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

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'badges': instance.badges,
      'courses': instance.courses,
      'clubs': instance.clubs,
      'email': instance.email,
      'msgTokens': instance.msgTokens,
      'name': instance.name,
      'notifications': instance.notifications,
      'picture': instance.picture,
      'showBadges': instance.showBadges,
      'showCourses': instance.showCourses,
      'status': instance.status,
    };
