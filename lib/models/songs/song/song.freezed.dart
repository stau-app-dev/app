// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'song.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SongTearOff {
  const _$SongTearOff();

  _Song call(
      {required String id,
      required String artist,
      required DateTime createdAt,
      required String creatorEmail,
      required String name,
      required int upvotes,
      bool? upvoted}) {
    return _Song(
      id: id,
      artist: artist,
      createdAt: createdAt,
      creatorEmail: creatorEmail,
      name: name,
      upvotes: upvotes,
      upvoted: upvoted,
    );
  }
}

/// @nodoc
const $Song = _$SongTearOff();

/// @nodoc
mixin _$Song {
  String get id => throw _privateConstructorUsedError;
  String get artist => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  String get creatorEmail => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get upvotes => throw _privateConstructorUsedError;
  bool? get upvoted => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SongCopyWith<Song> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SongCopyWith<$Res> {
  factory $SongCopyWith(Song value, $Res Function(Song) then) =
      _$SongCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String artist,
      DateTime createdAt,
      String creatorEmail,
      String name,
      int upvotes,
      bool? upvoted});
}

/// @nodoc
class _$SongCopyWithImpl<$Res> implements $SongCopyWith<$Res> {
  _$SongCopyWithImpl(this._value, this._then);

  final Song _value;
  // ignore: unused_field
  final $Res Function(Song) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? artist = freezed,
    Object? createdAt = freezed,
    Object? creatorEmail = freezed,
    Object? name = freezed,
    Object? upvotes = freezed,
    Object? upvoted = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      artist: artist == freezed
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      creatorEmail: creatorEmail == freezed
          ? _value.creatorEmail
          : creatorEmail // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      upvotes: upvotes == freezed
          ? _value.upvotes
          : upvotes // ignore: cast_nullable_to_non_nullable
              as int,
      upvoted: upvoted == freezed
          ? _value.upvoted
          : upvoted // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$SongCopyWith<$Res> implements $SongCopyWith<$Res> {
  factory _$SongCopyWith(_Song value, $Res Function(_Song) then) =
      __$SongCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String artist,
      DateTime createdAt,
      String creatorEmail,
      String name,
      int upvotes,
      bool? upvoted});
}

/// @nodoc
class __$SongCopyWithImpl<$Res> extends _$SongCopyWithImpl<$Res>
    implements _$SongCopyWith<$Res> {
  __$SongCopyWithImpl(_Song _value, $Res Function(_Song) _then)
      : super(_value, (v) => _then(v as _Song));

  @override
  _Song get _value => super._value as _Song;

  @override
  $Res call({
    Object? id = freezed,
    Object? artist = freezed,
    Object? createdAt = freezed,
    Object? creatorEmail = freezed,
    Object? name = freezed,
    Object? upvotes = freezed,
    Object? upvoted = freezed,
  }) {
    return _then(_Song(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      artist: artist == freezed
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      creatorEmail: creatorEmail == freezed
          ? _value.creatorEmail
          : creatorEmail // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      upvotes: upvotes == freezed
          ? _value.upvotes
          : upvotes // ignore: cast_nullable_to_non_nullable
              as int,
      upvoted: upvoted == freezed
          ? _value.upvoted
          : upvoted // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_Song implements _Song {
  const _$_Song(
      {required this.id,
      required this.artist,
      required this.createdAt,
      required this.creatorEmail,
      required this.name,
      required this.upvotes,
      this.upvoted});

  @override
  final String id;
  @override
  final String artist;
  @override
  final DateTime createdAt;
  @override
  final String creatorEmail;
  @override
  final String name;
  @override
  final int upvotes;
  @override
  final bool? upvoted;

  @override
  String toString() {
    return 'Song(id: $id, artist: $artist, createdAt: $createdAt, creatorEmail: $creatorEmail, name: $name, upvotes: $upvotes, upvoted: $upvoted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Song &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.artist, artist) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality()
                .equals(other.creatorEmail, creatorEmail) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.upvotes, upvotes) &&
            const DeepCollectionEquality().equals(other.upvoted, upvoted));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(artist),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(creatorEmail),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(upvotes),
      const DeepCollectionEquality().hash(upvoted));

  @JsonKey(ignore: true)
  @override
  _$SongCopyWith<_Song> get copyWith =>
      __$SongCopyWithImpl<_Song>(this, _$identity);
}

abstract class _Song implements Song {
  const factory _Song(
      {required String id,
      required String artist,
      required DateTime createdAt,
      required String creatorEmail,
      required String name,
      required int upvotes,
      bool? upvoted}) = _$_Song;

  @override
  String get id;
  @override
  String get artist;
  @override
  DateTime get createdAt;
  @override
  String get creatorEmail;
  @override
  String get name;
  @override
  int get upvotes;
  @override
  bool? get upvoted;
  @override
  @JsonKey(ignore: true)
  _$SongCopyWith<_Song> get copyWith => throw _privateConstructorUsedError;
}
