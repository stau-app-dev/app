// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'song.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Song _$$_SongFromJson(Map<String, dynamic> json) => _$_Song(
      artist: json['artist'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      creatorEmail: json['creatorEmail'] as String,
      name: json['name'] as String,
      upvotes: json['upvotes'] as int,
    );

Map<String, dynamic> _$$_SongToJson(_$_Song instance) => <String, dynamic>{
      'artist': instance.artist,
      'createdAt': instance.createdAt.toIso8601String(),
      'creatorEmail': instance.creatorEmail,
      'name': instance.name,
      'upvotes': instance.upvotes,
    };
