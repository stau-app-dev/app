// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'club.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Club _$$_ClubFromJson(Map<String, dynamic> json) => _$_Club(
      id: json['id'] as String,
      admins:
          (json['admins'] as List<dynamic>).map((e) => e as String).toList(),
      description: json['description'] as String,
      joinPreference: json['joinPreference'] as int,
      members:
          (json['members'] as List<dynamic>).map((e) => e as String).toList(),
      name: json['name'] as String,
      pending:
          (json['pending'] as List<dynamic>).map((e) => e as String).toList(),
      pictureId: json['pictureId'] as String,
      pictureUrl: json['pictureUrl'] as String,
    );

Map<String, dynamic> _$$_ClubToJson(_$_Club instance) => <String, dynamic>{
      'id': instance.id,
      'admins': instance.admins,
      'description': instance.description,
      'joinPreference': instance.joinPreference,
      'members': instance.members,
      'name': instance.name,
      'pending': instance.pending,
      'pictureId': instance.pictureId,
      'pictureUrl': instance.pictureUrl,
    };
