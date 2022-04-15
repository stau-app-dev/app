// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'socials_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SocialsEventTearOff {
  const _$SocialsEventTearOff();

  _getUserClubs getUserClubs({required String userId}) {
    return _getUserClubs(
      userId: userId,
    );
  }

  _addClub addClub(
      {required String description,
      required String email,
      required int joinPreference,
      required String name,
      required String pictureId,
      required File picture,
      required String path,
      required String fileName}) {
    return _addClub(
      description: description,
      email: email,
      joinPreference: joinPreference,
      name: name,
      pictureId: pictureId,
      picture: picture,
      path: path,
      fileName: fileName,
    );
  }

  _resetAddedClubId resetAddedClubId() {
    return const _resetAddedClubId();
  }

  _resetFailSuccess resetFailSuccess() {
    return const _resetFailSuccess();
  }
}

/// @nodoc
const $SocialsEvent = _$SocialsEventTearOff();

/// @nodoc
mixin _$SocialsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) getUserClubs,
    required TResult Function(
            String description,
            String email,
            int joinPreference,
            String name,
            String pictureId,
            File picture,
            String path,
            String fileName)
        addClub,
    required TResult Function() resetAddedClubId,
    required TResult Function() resetFailSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String userId)? getUserClubs,
    TResult Function(
            String description,
            String email,
            int joinPreference,
            String name,
            String pictureId,
            File picture,
            String path,
            String fileName)?
        addClub,
    TResult Function()? resetAddedClubId,
    TResult Function()? resetFailSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? getUserClubs,
    TResult Function(
            String description,
            String email,
            int joinPreference,
            String name,
            String pictureId,
            File picture,
            String path,
            String fileName)?
        addClub,
    TResult Function()? resetAddedClubId,
    TResult Function()? resetFailSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getUserClubs value) getUserClubs,
    required TResult Function(_addClub value) addClub,
    required TResult Function(_resetAddedClubId value) resetAddedClubId,
    required TResult Function(_resetFailSuccess value) resetFailSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_getUserClubs value)? getUserClubs,
    TResult Function(_addClub value)? addClub,
    TResult Function(_resetAddedClubId value)? resetAddedClubId,
    TResult Function(_resetFailSuccess value)? resetFailSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getUserClubs value)? getUserClubs,
    TResult Function(_addClub value)? addClub,
    TResult Function(_resetAddedClubId value)? resetAddedClubId,
    TResult Function(_resetFailSuccess value)? resetFailSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocialsEventCopyWith<$Res> {
  factory $SocialsEventCopyWith(
          SocialsEvent value, $Res Function(SocialsEvent) then) =
      _$SocialsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SocialsEventCopyWithImpl<$Res> implements $SocialsEventCopyWith<$Res> {
  _$SocialsEventCopyWithImpl(this._value, this._then);

  final SocialsEvent _value;
  // ignore: unused_field
  final $Res Function(SocialsEvent) _then;
}

/// @nodoc
abstract class _$getUserClubsCopyWith<$Res> {
  factory _$getUserClubsCopyWith(
          _getUserClubs value, $Res Function(_getUserClubs) then) =
      __$getUserClubsCopyWithImpl<$Res>;
  $Res call({String userId});
}

/// @nodoc
class __$getUserClubsCopyWithImpl<$Res> extends _$SocialsEventCopyWithImpl<$Res>
    implements _$getUserClubsCopyWith<$Res> {
  __$getUserClubsCopyWithImpl(
      _getUserClubs _value, $Res Function(_getUserClubs) _then)
      : super(_value, (v) => _then(v as _getUserClubs));

  @override
  _getUserClubs get _value => super._value as _getUserClubs;

  @override
  $Res call({
    Object? userId = freezed,
  }) {
    return _then(_getUserClubs(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_getUserClubs implements _getUserClubs {
  const _$_getUserClubs({required this.userId});

  @override
  final String userId;

  @override
  String toString() {
    return 'SocialsEvent.getUserClubs(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _getUserClubs &&
            const DeepCollectionEquality().equals(other.userId, userId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(userId));

  @JsonKey(ignore: true)
  @override
  _$getUserClubsCopyWith<_getUserClubs> get copyWith =>
      __$getUserClubsCopyWithImpl<_getUserClubs>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) getUserClubs,
    required TResult Function(
            String description,
            String email,
            int joinPreference,
            String name,
            String pictureId,
            File picture,
            String path,
            String fileName)
        addClub,
    required TResult Function() resetAddedClubId,
    required TResult Function() resetFailSuccess,
  }) {
    return getUserClubs(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String userId)? getUserClubs,
    TResult Function(
            String description,
            String email,
            int joinPreference,
            String name,
            String pictureId,
            File picture,
            String path,
            String fileName)?
        addClub,
    TResult Function()? resetAddedClubId,
    TResult Function()? resetFailSuccess,
  }) {
    return getUserClubs?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? getUserClubs,
    TResult Function(
            String description,
            String email,
            int joinPreference,
            String name,
            String pictureId,
            File picture,
            String path,
            String fileName)?
        addClub,
    TResult Function()? resetAddedClubId,
    TResult Function()? resetFailSuccess,
    required TResult orElse(),
  }) {
    if (getUserClubs != null) {
      return getUserClubs(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getUserClubs value) getUserClubs,
    required TResult Function(_addClub value) addClub,
    required TResult Function(_resetAddedClubId value) resetAddedClubId,
    required TResult Function(_resetFailSuccess value) resetFailSuccess,
  }) {
    return getUserClubs(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_getUserClubs value)? getUserClubs,
    TResult Function(_addClub value)? addClub,
    TResult Function(_resetAddedClubId value)? resetAddedClubId,
    TResult Function(_resetFailSuccess value)? resetFailSuccess,
  }) {
    return getUserClubs?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getUserClubs value)? getUserClubs,
    TResult Function(_addClub value)? addClub,
    TResult Function(_resetAddedClubId value)? resetAddedClubId,
    TResult Function(_resetFailSuccess value)? resetFailSuccess,
    required TResult orElse(),
  }) {
    if (getUserClubs != null) {
      return getUserClubs(this);
    }
    return orElse();
  }
}

abstract class _getUserClubs implements SocialsEvent {
  const factory _getUserClubs({required String userId}) = _$_getUserClubs;

  String get userId;
  @JsonKey(ignore: true)
  _$getUserClubsCopyWith<_getUserClubs> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$addClubCopyWith<$Res> {
  factory _$addClubCopyWith(_addClub value, $Res Function(_addClub) then) =
      __$addClubCopyWithImpl<$Res>;
  $Res call(
      {String description,
      String email,
      int joinPreference,
      String name,
      String pictureId,
      File picture,
      String path,
      String fileName});
}

/// @nodoc
class __$addClubCopyWithImpl<$Res> extends _$SocialsEventCopyWithImpl<$Res>
    implements _$addClubCopyWith<$Res> {
  __$addClubCopyWithImpl(_addClub _value, $Res Function(_addClub) _then)
      : super(_value, (v) => _then(v as _addClub));

  @override
  _addClub get _value => super._value as _addClub;

  @override
  $Res call({
    Object? description = freezed,
    Object? email = freezed,
    Object? joinPreference = freezed,
    Object? name = freezed,
    Object? pictureId = freezed,
    Object? picture = freezed,
    Object? path = freezed,
    Object? fileName = freezed,
  }) {
    return _then(_addClub(
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      joinPreference: joinPreference == freezed
          ? _value.joinPreference
          : joinPreference // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      pictureId: pictureId == freezed
          ? _value.pictureId
          : pictureId // ignore: cast_nullable_to_non_nullable
              as String,
      picture: picture == freezed
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as File,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      fileName: fileName == freezed
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_addClub implements _addClub {
  const _$_addClub(
      {required this.description,
      required this.email,
      required this.joinPreference,
      required this.name,
      required this.pictureId,
      required this.picture,
      required this.path,
      required this.fileName});

  @override
  final String description;
  @override
  final String email;
  @override
  final int joinPreference;
  @override
  final String name;
  @override
  final String pictureId;
  @override
  final File picture;
  @override
  final String path;
  @override
  final String fileName;

  @override
  String toString() {
    return 'SocialsEvent.addClub(description: $description, email: $email, joinPreference: $joinPreference, name: $name, pictureId: $pictureId, picture: $picture, path: $path, fileName: $fileName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _addClub &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality()
                .equals(other.joinPreference, joinPreference) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.pictureId, pictureId) &&
            const DeepCollectionEquality().equals(other.picture, picture) &&
            const DeepCollectionEquality().equals(other.path, path) &&
            const DeepCollectionEquality().equals(other.fileName, fileName));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(joinPreference),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(pictureId),
      const DeepCollectionEquality().hash(picture),
      const DeepCollectionEquality().hash(path),
      const DeepCollectionEquality().hash(fileName));

  @JsonKey(ignore: true)
  @override
  _$addClubCopyWith<_addClub> get copyWith =>
      __$addClubCopyWithImpl<_addClub>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) getUserClubs,
    required TResult Function(
            String description,
            String email,
            int joinPreference,
            String name,
            String pictureId,
            File picture,
            String path,
            String fileName)
        addClub,
    required TResult Function() resetAddedClubId,
    required TResult Function() resetFailSuccess,
  }) {
    return addClub(description, email, joinPreference, name, pictureId, picture,
        path, fileName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String userId)? getUserClubs,
    TResult Function(
            String description,
            String email,
            int joinPreference,
            String name,
            String pictureId,
            File picture,
            String path,
            String fileName)?
        addClub,
    TResult Function()? resetAddedClubId,
    TResult Function()? resetFailSuccess,
  }) {
    return addClub?.call(description, email, joinPreference, name, pictureId,
        picture, path, fileName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? getUserClubs,
    TResult Function(
            String description,
            String email,
            int joinPreference,
            String name,
            String pictureId,
            File picture,
            String path,
            String fileName)?
        addClub,
    TResult Function()? resetAddedClubId,
    TResult Function()? resetFailSuccess,
    required TResult orElse(),
  }) {
    if (addClub != null) {
      return addClub(description, email, joinPreference, name, pictureId,
          picture, path, fileName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getUserClubs value) getUserClubs,
    required TResult Function(_addClub value) addClub,
    required TResult Function(_resetAddedClubId value) resetAddedClubId,
    required TResult Function(_resetFailSuccess value) resetFailSuccess,
  }) {
    return addClub(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_getUserClubs value)? getUserClubs,
    TResult Function(_addClub value)? addClub,
    TResult Function(_resetAddedClubId value)? resetAddedClubId,
    TResult Function(_resetFailSuccess value)? resetFailSuccess,
  }) {
    return addClub?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getUserClubs value)? getUserClubs,
    TResult Function(_addClub value)? addClub,
    TResult Function(_resetAddedClubId value)? resetAddedClubId,
    TResult Function(_resetFailSuccess value)? resetFailSuccess,
    required TResult orElse(),
  }) {
    if (addClub != null) {
      return addClub(this);
    }
    return orElse();
  }
}

abstract class _addClub implements SocialsEvent {
  const factory _addClub(
      {required String description,
      required String email,
      required int joinPreference,
      required String name,
      required String pictureId,
      required File picture,
      required String path,
      required String fileName}) = _$_addClub;

  String get description;
  String get email;
  int get joinPreference;
  String get name;
  String get pictureId;
  File get picture;
  String get path;
  String get fileName;
  @JsonKey(ignore: true)
  _$addClubCopyWith<_addClub> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$resetAddedClubIdCopyWith<$Res> {
  factory _$resetAddedClubIdCopyWith(
          _resetAddedClubId value, $Res Function(_resetAddedClubId) then) =
      __$resetAddedClubIdCopyWithImpl<$Res>;
}

/// @nodoc
class __$resetAddedClubIdCopyWithImpl<$Res>
    extends _$SocialsEventCopyWithImpl<$Res>
    implements _$resetAddedClubIdCopyWith<$Res> {
  __$resetAddedClubIdCopyWithImpl(
      _resetAddedClubId _value, $Res Function(_resetAddedClubId) _then)
      : super(_value, (v) => _then(v as _resetAddedClubId));

  @override
  _resetAddedClubId get _value => super._value as _resetAddedClubId;
}

/// @nodoc

class _$_resetAddedClubId implements _resetAddedClubId {
  const _$_resetAddedClubId();

  @override
  String toString() {
    return 'SocialsEvent.resetAddedClubId()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _resetAddedClubId);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) getUserClubs,
    required TResult Function(
            String description,
            String email,
            int joinPreference,
            String name,
            String pictureId,
            File picture,
            String path,
            String fileName)
        addClub,
    required TResult Function() resetAddedClubId,
    required TResult Function() resetFailSuccess,
  }) {
    return resetAddedClubId();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String userId)? getUserClubs,
    TResult Function(
            String description,
            String email,
            int joinPreference,
            String name,
            String pictureId,
            File picture,
            String path,
            String fileName)?
        addClub,
    TResult Function()? resetAddedClubId,
    TResult Function()? resetFailSuccess,
  }) {
    return resetAddedClubId?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? getUserClubs,
    TResult Function(
            String description,
            String email,
            int joinPreference,
            String name,
            String pictureId,
            File picture,
            String path,
            String fileName)?
        addClub,
    TResult Function()? resetAddedClubId,
    TResult Function()? resetFailSuccess,
    required TResult orElse(),
  }) {
    if (resetAddedClubId != null) {
      return resetAddedClubId();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getUserClubs value) getUserClubs,
    required TResult Function(_addClub value) addClub,
    required TResult Function(_resetAddedClubId value) resetAddedClubId,
    required TResult Function(_resetFailSuccess value) resetFailSuccess,
  }) {
    return resetAddedClubId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_getUserClubs value)? getUserClubs,
    TResult Function(_addClub value)? addClub,
    TResult Function(_resetAddedClubId value)? resetAddedClubId,
    TResult Function(_resetFailSuccess value)? resetFailSuccess,
  }) {
    return resetAddedClubId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getUserClubs value)? getUserClubs,
    TResult Function(_addClub value)? addClub,
    TResult Function(_resetAddedClubId value)? resetAddedClubId,
    TResult Function(_resetFailSuccess value)? resetFailSuccess,
    required TResult orElse(),
  }) {
    if (resetAddedClubId != null) {
      return resetAddedClubId(this);
    }
    return orElse();
  }
}

abstract class _resetAddedClubId implements SocialsEvent {
  const factory _resetAddedClubId() = _$_resetAddedClubId;
}

/// @nodoc
abstract class _$resetFailSuccessCopyWith<$Res> {
  factory _$resetFailSuccessCopyWith(
          _resetFailSuccess value, $Res Function(_resetFailSuccess) then) =
      __$resetFailSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$resetFailSuccessCopyWithImpl<$Res>
    extends _$SocialsEventCopyWithImpl<$Res>
    implements _$resetFailSuccessCopyWith<$Res> {
  __$resetFailSuccessCopyWithImpl(
      _resetFailSuccess _value, $Res Function(_resetFailSuccess) _then)
      : super(_value, (v) => _then(v as _resetFailSuccess));

  @override
  _resetFailSuccess get _value => super._value as _resetFailSuccess;
}

/// @nodoc

class _$_resetFailSuccess implements _resetFailSuccess {
  const _$_resetFailSuccess();

  @override
  String toString() {
    return 'SocialsEvent.resetFailSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _resetFailSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) getUserClubs,
    required TResult Function(
            String description,
            String email,
            int joinPreference,
            String name,
            String pictureId,
            File picture,
            String path,
            String fileName)
        addClub,
    required TResult Function() resetAddedClubId,
    required TResult Function() resetFailSuccess,
  }) {
    return resetFailSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String userId)? getUserClubs,
    TResult Function(
            String description,
            String email,
            int joinPreference,
            String name,
            String pictureId,
            File picture,
            String path,
            String fileName)?
        addClub,
    TResult Function()? resetAddedClubId,
    TResult Function()? resetFailSuccess,
  }) {
    return resetFailSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? getUserClubs,
    TResult Function(
            String description,
            String email,
            int joinPreference,
            String name,
            String pictureId,
            File picture,
            String path,
            String fileName)?
        addClub,
    TResult Function()? resetAddedClubId,
    TResult Function()? resetFailSuccess,
    required TResult orElse(),
  }) {
    if (resetFailSuccess != null) {
      return resetFailSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getUserClubs value) getUserClubs,
    required TResult Function(_addClub value) addClub,
    required TResult Function(_resetAddedClubId value) resetAddedClubId,
    required TResult Function(_resetFailSuccess value) resetFailSuccess,
  }) {
    return resetFailSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_getUserClubs value)? getUserClubs,
    TResult Function(_addClub value)? addClub,
    TResult Function(_resetAddedClubId value)? resetAddedClubId,
    TResult Function(_resetFailSuccess value)? resetFailSuccess,
  }) {
    return resetFailSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getUserClubs value)? getUserClubs,
    TResult Function(_addClub value)? addClub,
    TResult Function(_resetAddedClubId value)? resetAddedClubId,
    TResult Function(_resetFailSuccess value)? resetFailSuccess,
    required TResult orElse(),
  }) {
    if (resetFailSuccess != null) {
      return resetFailSuccess(this);
    }
    return orElse();
  }
}

abstract class _resetFailSuccess implements SocialsEvent {
  const factory _resetFailSuccess() = _$_resetFailSuccess;
}

/// @nodoc
class _$SocialsStateTearOff {
  const _$SocialsStateTearOff();

  _SocialsState call(
      {List<ClubQuickAccessItem>? clubQuickAccessItems,
      Club? club,
      String? addedClubId,
      Failure? failure,
      Success? success}) {
    return _SocialsState(
      clubQuickAccessItems: clubQuickAccessItems,
      club: club,
      addedClubId: addedClubId,
      failure: failure,
      success: success,
    );
  }
}

/// @nodoc
const $SocialsState = _$SocialsStateTearOff();

/// @nodoc
mixin _$SocialsState {
  List<ClubQuickAccessItem>? get clubQuickAccessItems =>
      throw _privateConstructorUsedError;
  Club? get club => throw _privateConstructorUsedError;
  String? get addedClubId => throw _privateConstructorUsedError;
  Failure? get failure => throw _privateConstructorUsedError;
  Success? get success => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SocialsStateCopyWith<SocialsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocialsStateCopyWith<$Res> {
  factory $SocialsStateCopyWith(
          SocialsState value, $Res Function(SocialsState) then) =
      _$SocialsStateCopyWithImpl<$Res>;
  $Res call(
      {List<ClubQuickAccessItem>? clubQuickAccessItems,
      Club? club,
      String? addedClubId,
      Failure? failure,
      Success? success});

  $ClubCopyWith<$Res>? get club;
  $FailureCopyWith<$Res>? get failure;
  $SuccessCopyWith<$Res>? get success;
}

/// @nodoc
class _$SocialsStateCopyWithImpl<$Res> implements $SocialsStateCopyWith<$Res> {
  _$SocialsStateCopyWithImpl(this._value, this._then);

  final SocialsState _value;
  // ignore: unused_field
  final $Res Function(SocialsState) _then;

  @override
  $Res call({
    Object? clubQuickAccessItems = freezed,
    Object? club = freezed,
    Object? addedClubId = freezed,
    Object? failure = freezed,
    Object? success = freezed,
  }) {
    return _then(_value.copyWith(
      clubQuickAccessItems: clubQuickAccessItems == freezed
          ? _value.clubQuickAccessItems
          : clubQuickAccessItems // ignore: cast_nullable_to_non_nullable
              as List<ClubQuickAccessItem>?,
      club: club == freezed
          ? _value.club
          : club // ignore: cast_nullable_to_non_nullable
              as Club?,
      addedClubId: addedClubId == freezed
          ? _value.addedClubId
          : addedClubId // ignore: cast_nullable_to_non_nullable
              as String?,
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
  $ClubCopyWith<$Res>? get club {
    if (_value.club == null) {
      return null;
    }

    return $ClubCopyWith<$Res>(_value.club!, (value) {
      return _then(_value.copyWith(club: value));
    });
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
abstract class _$SocialsStateCopyWith<$Res>
    implements $SocialsStateCopyWith<$Res> {
  factory _$SocialsStateCopyWith(
          _SocialsState value, $Res Function(_SocialsState) then) =
      __$SocialsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<ClubQuickAccessItem>? clubQuickAccessItems,
      Club? club,
      String? addedClubId,
      Failure? failure,
      Success? success});

  @override
  $ClubCopyWith<$Res>? get club;
  @override
  $FailureCopyWith<$Res>? get failure;
  @override
  $SuccessCopyWith<$Res>? get success;
}

/// @nodoc
class __$SocialsStateCopyWithImpl<$Res> extends _$SocialsStateCopyWithImpl<$Res>
    implements _$SocialsStateCopyWith<$Res> {
  __$SocialsStateCopyWithImpl(
      _SocialsState _value, $Res Function(_SocialsState) _then)
      : super(_value, (v) => _then(v as _SocialsState));

  @override
  _SocialsState get _value => super._value as _SocialsState;

  @override
  $Res call({
    Object? clubQuickAccessItems = freezed,
    Object? club = freezed,
    Object? addedClubId = freezed,
    Object? failure = freezed,
    Object? success = freezed,
  }) {
    return _then(_SocialsState(
      clubQuickAccessItems: clubQuickAccessItems == freezed
          ? _value.clubQuickAccessItems
          : clubQuickAccessItems // ignore: cast_nullable_to_non_nullable
              as List<ClubQuickAccessItem>?,
      club: club == freezed
          ? _value.club
          : club // ignore: cast_nullable_to_non_nullable
              as Club?,
      addedClubId: addedClubId == freezed
          ? _value.addedClubId
          : addedClubId // ignore: cast_nullable_to_non_nullable
              as String?,
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

class _$_SocialsState implements _SocialsState {
  const _$_SocialsState(
      {this.clubQuickAccessItems,
      this.club,
      this.addedClubId,
      this.failure,
      this.success});

  @override
  final List<ClubQuickAccessItem>? clubQuickAccessItems;
  @override
  final Club? club;
  @override
  final String? addedClubId;
  @override
  final Failure? failure;
  @override
  final Success? success;

  @override
  String toString() {
    return 'SocialsState(clubQuickAccessItems: $clubQuickAccessItems, club: $club, addedClubId: $addedClubId, failure: $failure, success: $success)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SocialsState &&
            const DeepCollectionEquality()
                .equals(other.clubQuickAccessItems, clubQuickAccessItems) &&
            const DeepCollectionEquality().equals(other.club, club) &&
            const DeepCollectionEquality()
                .equals(other.addedClubId, addedClubId) &&
            const DeepCollectionEquality().equals(other.failure, failure) &&
            const DeepCollectionEquality().equals(other.success, success));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(clubQuickAccessItems),
      const DeepCollectionEquality().hash(club),
      const DeepCollectionEquality().hash(addedClubId),
      const DeepCollectionEquality().hash(failure),
      const DeepCollectionEquality().hash(success));

  @JsonKey(ignore: true)
  @override
  _$SocialsStateCopyWith<_SocialsState> get copyWith =>
      __$SocialsStateCopyWithImpl<_SocialsState>(this, _$identity);
}

abstract class _SocialsState implements SocialsState {
  const factory _SocialsState(
      {List<ClubQuickAccessItem>? clubQuickAccessItems,
      Club? club,
      String? addedClubId,
      Failure? failure,
      Success? success}) = _$_SocialsState;

  @override
  List<ClubQuickAccessItem>? get clubQuickAccessItems;
  @override
  Club? get club;
  @override
  String? get addedClubId;
  @override
  Failure? get failure;
  @override
  Success? get success;
  @override
  @JsonKey(ignore: true)
  _$SocialsStateCopyWith<_SocialsState> get copyWith =>
      throw _privateConstructorUsedError;
}
