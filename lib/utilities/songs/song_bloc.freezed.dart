// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'song_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SongEventTearOff {
  const _$SongEventTearOff();

  _getSongs getSongs() {
    return const _getSongs();
  }

  _addSong addSong(
      {required String creatorEmail,
      required String artist,
      required String name}) {
    return _addSong(
      creatorEmail: creatorEmail,
      artist: artist,
      name: name,
    );
  }
}

/// @nodoc
const $SongEvent = _$SongEventTearOff();

/// @nodoc
mixin _$SongEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getSongs,
    required TResult Function(String creatorEmail, String artist, String name)
        addSong,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getSongs,
    TResult Function(String creatorEmail, String artist, String name)? addSong,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getSongs,
    TResult Function(String creatorEmail, String artist, String name)? addSong,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getSongs value) getSongs,
    required TResult Function(_addSong value) addSong,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_getSongs value)? getSongs,
    TResult Function(_addSong value)? addSong,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getSongs value)? getSongs,
    TResult Function(_addSong value)? addSong,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SongEventCopyWith<$Res> {
  factory $SongEventCopyWith(SongEvent value, $Res Function(SongEvent) then) =
      _$SongEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SongEventCopyWithImpl<$Res> implements $SongEventCopyWith<$Res> {
  _$SongEventCopyWithImpl(this._value, this._then);

  final SongEvent _value;
  // ignore: unused_field
  final $Res Function(SongEvent) _then;
}

/// @nodoc
abstract class _$getSongsCopyWith<$Res> {
  factory _$getSongsCopyWith(_getSongs value, $Res Function(_getSongs) then) =
      __$getSongsCopyWithImpl<$Res>;
}

/// @nodoc
class __$getSongsCopyWithImpl<$Res> extends _$SongEventCopyWithImpl<$Res>
    implements _$getSongsCopyWith<$Res> {
  __$getSongsCopyWithImpl(_getSongs _value, $Res Function(_getSongs) _then)
      : super(_value, (v) => _then(v as _getSongs));

  @override
  _getSongs get _value => super._value as _getSongs;
}

/// @nodoc

class _$_getSongs implements _getSongs {
  const _$_getSongs();

  @override
  String toString() {
    return 'SongEvent.getSongs()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _getSongs);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getSongs,
    required TResult Function(String creatorEmail, String artist, String name)
        addSong,
  }) {
    return getSongs();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getSongs,
    TResult Function(String creatorEmail, String artist, String name)? addSong,
  }) {
    return getSongs?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getSongs,
    TResult Function(String creatorEmail, String artist, String name)? addSong,
    required TResult orElse(),
  }) {
    if (getSongs != null) {
      return getSongs();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getSongs value) getSongs,
    required TResult Function(_addSong value) addSong,
  }) {
    return getSongs(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_getSongs value)? getSongs,
    TResult Function(_addSong value)? addSong,
  }) {
    return getSongs?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getSongs value)? getSongs,
    TResult Function(_addSong value)? addSong,
    required TResult orElse(),
  }) {
    if (getSongs != null) {
      return getSongs(this);
    }
    return orElse();
  }
}

abstract class _getSongs implements SongEvent {
  const factory _getSongs() = _$_getSongs;
}

/// @nodoc
abstract class _$addSongCopyWith<$Res> {
  factory _$addSongCopyWith(_addSong value, $Res Function(_addSong) then) =
      __$addSongCopyWithImpl<$Res>;
  $Res call({String creatorEmail, String artist, String name});
}

/// @nodoc
class __$addSongCopyWithImpl<$Res> extends _$SongEventCopyWithImpl<$Res>
    implements _$addSongCopyWith<$Res> {
  __$addSongCopyWithImpl(_addSong _value, $Res Function(_addSong) _then)
      : super(_value, (v) => _then(v as _addSong));

  @override
  _addSong get _value => super._value as _addSong;

  @override
  $Res call({
    Object? creatorEmail = freezed,
    Object? artist = freezed,
    Object? name = freezed,
  }) {
    return _then(_addSong(
      creatorEmail: creatorEmail == freezed
          ? _value.creatorEmail
          : creatorEmail // ignore: cast_nullable_to_non_nullable
              as String,
      artist: artist == freezed
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_addSong implements _addSong {
  const _$_addSong(
      {required this.creatorEmail, required this.artist, required this.name});

  @override
  final String creatorEmail;
  @override
  final String artist;
  @override
  final String name;

  @override
  String toString() {
    return 'SongEvent.addSong(creatorEmail: $creatorEmail, artist: $artist, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _addSong &&
            const DeepCollectionEquality()
                .equals(other.creatorEmail, creatorEmail) &&
            const DeepCollectionEquality().equals(other.artist, artist) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(creatorEmail),
      const DeepCollectionEquality().hash(artist),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$addSongCopyWith<_addSong> get copyWith =>
      __$addSongCopyWithImpl<_addSong>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getSongs,
    required TResult Function(String creatorEmail, String artist, String name)
        addSong,
  }) {
    return addSong(creatorEmail, artist, name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getSongs,
    TResult Function(String creatorEmail, String artist, String name)? addSong,
  }) {
    return addSong?.call(creatorEmail, artist, name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getSongs,
    TResult Function(String creatorEmail, String artist, String name)? addSong,
    required TResult orElse(),
  }) {
    if (addSong != null) {
      return addSong(creatorEmail, artist, name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getSongs value) getSongs,
    required TResult Function(_addSong value) addSong,
  }) {
    return addSong(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_getSongs value)? getSongs,
    TResult Function(_addSong value)? addSong,
  }) {
    return addSong?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getSongs value)? getSongs,
    TResult Function(_addSong value)? addSong,
    required TResult orElse(),
  }) {
    if (addSong != null) {
      return addSong(this);
    }
    return orElse();
  }
}

abstract class _addSong implements SongEvent {
  const factory _addSong(
      {required String creatorEmail,
      required String artist,
      required String name}) = _$_addSong;

  String get creatorEmail;
  String get artist;
  String get name;
  @JsonKey(ignore: true)
  _$addSongCopyWith<_addSong> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SongStateTearOff {
  const _$SongStateTearOff();

  _SongState call(
      {List<Song> songs = const [], Failure? failure, Success? success}) {
    return _SongState(
      songs: songs,
      failure: failure,
      success: success,
    );
  }
}

/// @nodoc
const $SongState = _$SongStateTearOff();

/// @nodoc
mixin _$SongState {
  List<Song> get songs => throw _privateConstructorUsedError;
  Failure? get failure => throw _privateConstructorUsedError;
  Success? get success => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SongStateCopyWith<SongState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SongStateCopyWith<$Res> {
  factory $SongStateCopyWith(SongState value, $Res Function(SongState) then) =
      _$SongStateCopyWithImpl<$Res>;
  $Res call({List<Song> songs, Failure? failure, Success? success});

  $FailureCopyWith<$Res>? get failure;
  $SuccessCopyWith<$Res>? get success;
}

/// @nodoc
class _$SongStateCopyWithImpl<$Res> implements $SongStateCopyWith<$Res> {
  _$SongStateCopyWithImpl(this._value, this._then);

  final SongState _value;
  // ignore: unused_field
  final $Res Function(SongState) _then;

  @override
  $Res call({
    Object? songs = freezed,
    Object? failure = freezed,
    Object? success = freezed,
  }) {
    return _then(_value.copyWith(
      songs: songs == freezed
          ? _value.songs
          : songs // ignore: cast_nullable_to_non_nullable
              as List<Song>,
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as Success?,
    ));
  }

  @override
  $FailureCopyWith<$Res>? get failure {
    if (_value.failure == null) {
      return null;
    }

    return $FailureCopyWith<$Res>(_value.failure!, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }

  @override
  $SuccessCopyWith<$Res>? get success {
    if (_value.success == null) {
      return null;
    }

    return $SuccessCopyWith<$Res>(_value.success!, (value) {
      return _then(_value.copyWith(success: value));
    });
  }
}

/// @nodoc
abstract class _$SongStateCopyWith<$Res> implements $SongStateCopyWith<$Res> {
  factory _$SongStateCopyWith(
          _SongState value, $Res Function(_SongState) then) =
      __$SongStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Song> songs, Failure? failure, Success? success});

  @override
  $FailureCopyWith<$Res>? get failure;
  @override
  $SuccessCopyWith<$Res>? get success;
}

/// @nodoc
class __$SongStateCopyWithImpl<$Res> extends _$SongStateCopyWithImpl<$Res>
    implements _$SongStateCopyWith<$Res> {
  __$SongStateCopyWithImpl(_SongState _value, $Res Function(_SongState) _then)
      : super(_value, (v) => _then(v as _SongState));

  @override
  _SongState get _value => super._value as _SongState;

  @override
  $Res call({
    Object? songs = freezed,
    Object? failure = freezed,
    Object? success = freezed,
  }) {
    return _then(_SongState(
      songs: songs == freezed
          ? _value.songs
          : songs // ignore: cast_nullable_to_non_nullable
              as List<Song>,
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as Success?,
    ));
  }
}

/// @nodoc

class _$_SongState implements _SongState {
  const _$_SongState({this.songs = const [], this.failure, this.success});

  @JsonKey()
  @override
  final List<Song> songs;
  @override
  final Failure? failure;
  @override
  final Success? success;

  @override
  String toString() {
    return 'SongState(songs: $songs, failure: $failure, success: $success)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SongState &&
            const DeepCollectionEquality().equals(other.songs, songs) &&
            const DeepCollectionEquality().equals(other.failure, failure) &&
            const DeepCollectionEquality().equals(other.success, success));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(songs),
      const DeepCollectionEquality().hash(failure),
      const DeepCollectionEquality().hash(success));

  @JsonKey(ignore: true)
  @override
  _$SongStateCopyWith<_SongState> get copyWith =>
      __$SongStateCopyWithImpl<_SongState>(this, _$identity);
}

abstract class _SongState implements SongState {
  const factory _SongState(
      {List<Song> songs, Failure? failure, Success? success}) = _$_SongState;

  @override
  List<Song> get songs;
  @override
  Failure? get failure;
  @override
  Success? get success;
  @override
  @JsonKey(ignore: true)
  _$SongStateCopyWith<_SongState> get copyWith =>
      throw _privateConstructorUsedError;
}
