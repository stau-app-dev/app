// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'club_announcement.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ClubAnnouncementTearOff {
  const _$ClubAnnouncementTearOff();

  _ClubAnnouncement call(
      {required String id,
      required String clubId,
      required String clubName,
      required String content,
      required DateTime createdAt,
      required String creatorName}) {
    return _ClubAnnouncement(
      id: id,
      clubId: clubId,
      clubName: clubName,
      content: content,
      createdAt: createdAt,
      creatorName: creatorName,
    );
  }
}

/// @nodoc
const $ClubAnnouncement = _$ClubAnnouncementTearOff();

/// @nodoc
mixin _$ClubAnnouncement {
  String get id => throw _privateConstructorUsedError;
  String get clubId => throw _privateConstructorUsedError;
  String get clubName => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  String get creatorName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ClubAnnouncementCopyWith<ClubAnnouncement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClubAnnouncementCopyWith<$Res> {
  factory $ClubAnnouncementCopyWith(
          ClubAnnouncement value, $Res Function(ClubAnnouncement) then) =
      _$ClubAnnouncementCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String clubId,
      String clubName,
      String content,
      DateTime createdAt,
      String creatorName});
}

/// @nodoc
class _$ClubAnnouncementCopyWithImpl<$Res>
    implements $ClubAnnouncementCopyWith<$Res> {
  _$ClubAnnouncementCopyWithImpl(this._value, this._then);

  final ClubAnnouncement _value;
  // ignore: unused_field
  final $Res Function(ClubAnnouncement) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? clubId = freezed,
    Object? clubName = freezed,
    Object? content = freezed,
    Object? createdAt = freezed,
    Object? creatorName = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      clubId: clubId == freezed
          ? _value.clubId
          : clubId // ignore: cast_nullable_to_non_nullable
              as String,
      clubName: clubName == freezed
          ? _value.clubName
          : clubName // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      creatorName: creatorName == freezed
          ? _value.creatorName
          : creatorName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ClubAnnouncementCopyWith<$Res>
    implements $ClubAnnouncementCopyWith<$Res> {
  factory _$ClubAnnouncementCopyWith(
          _ClubAnnouncement value, $Res Function(_ClubAnnouncement) then) =
      __$ClubAnnouncementCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String clubId,
      String clubName,
      String content,
      DateTime createdAt,
      String creatorName});
}

/// @nodoc
class __$ClubAnnouncementCopyWithImpl<$Res>
    extends _$ClubAnnouncementCopyWithImpl<$Res>
    implements _$ClubAnnouncementCopyWith<$Res> {
  __$ClubAnnouncementCopyWithImpl(
      _ClubAnnouncement _value, $Res Function(_ClubAnnouncement) _then)
      : super(_value, (v) => _then(v as _ClubAnnouncement));

  @override
  _ClubAnnouncement get _value => super._value as _ClubAnnouncement;

  @override
  $Res call({
    Object? id = freezed,
    Object? clubId = freezed,
    Object? clubName = freezed,
    Object? content = freezed,
    Object? createdAt = freezed,
    Object? creatorName = freezed,
  }) {
    return _then(_ClubAnnouncement(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      clubId: clubId == freezed
          ? _value.clubId
          : clubId // ignore: cast_nullable_to_non_nullable
              as String,
      clubName: clubName == freezed
          ? _value.clubName
          : clubName // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      creatorName: creatorName == freezed
          ? _value.creatorName
          : creatorName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ClubAnnouncement implements _ClubAnnouncement {
  const _$_ClubAnnouncement(
      {required this.id,
      required this.clubId,
      required this.clubName,
      required this.content,
      required this.createdAt,
      required this.creatorName});

  @override
  final String id;
  @override
  final String clubId;
  @override
  final String clubName;
  @override
  final String content;
  @override
  final DateTime createdAt;
  @override
  final String creatorName;

  @override
  String toString() {
    return 'ClubAnnouncement(id: $id, clubId: $clubId, clubName: $clubName, content: $content, createdAt: $createdAt, creatorName: $creatorName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ClubAnnouncement &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.clubId, clubId) &&
            const DeepCollectionEquality().equals(other.clubName, clubName) &&
            const DeepCollectionEquality().equals(other.content, content) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality()
                .equals(other.creatorName, creatorName));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(clubId),
      const DeepCollectionEquality().hash(clubName),
      const DeepCollectionEquality().hash(content),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(creatorName));

  @JsonKey(ignore: true)
  @override
  _$ClubAnnouncementCopyWith<_ClubAnnouncement> get copyWith =>
      __$ClubAnnouncementCopyWithImpl<_ClubAnnouncement>(this, _$identity);
}

abstract class _ClubAnnouncement implements ClubAnnouncement {
  const factory _ClubAnnouncement(
      {required String id,
      required String clubId,
      required String clubName,
      required String content,
      required DateTime createdAt,
      required String creatorName}) = _$_ClubAnnouncement;

  @override
  String get id;
  @override
  String get clubId;
  @override
  String get clubName;
  @override
  String get content;
  @override
  DateTime get createdAt;
  @override
  String get creatorName;
  @override
  @JsonKey(ignore: true)
  _$ClubAnnouncementCopyWith<_ClubAnnouncement> get copyWith =>
      throw _privateConstructorUsedError;
}
