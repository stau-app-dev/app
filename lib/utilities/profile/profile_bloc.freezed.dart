// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProfileEventTearOff {
  const _$ProfileEventTearOff();

  _getUser getUser(
      {required String id, required String email, required String name}) {
    return _getUser(
      id: id,
      email: email,
      name: name,
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

  _resetFailSuccess resetFailSuccess() {
    return const _resetFailSuccess();
  }
}

/// @nodoc
const $ProfileEvent = _$ProfileEventTearOff();

/// @nodoc
mixin _$ProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, String email, String name) getUser,
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
    required TResult Function() resetFailSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id, String email, String name)? getUser,
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
    TResult Function()? resetFailSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String email, String name)? getUser,
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
    TResult Function()? resetFailSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getUser value) getUser,
    required TResult Function(_addClub value) addClub,
    required TResult Function(_resetFailSuccess value) resetFailSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_getUser value)? getUser,
    TResult Function(_addClub value)? addClub,
    TResult Function(_resetFailSuccess value)? resetFailSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getUser value)? getUser,
    TResult Function(_addClub value)? addClub,
    TResult Function(_resetFailSuccess value)? resetFailSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEventCopyWith<$Res> {
  factory $ProfileEventCopyWith(
          ProfileEvent value, $Res Function(ProfileEvent) then) =
      _$ProfileEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileEventCopyWithImpl<$Res> implements $ProfileEventCopyWith<$Res> {
  _$ProfileEventCopyWithImpl(this._value, this._then);

  final ProfileEvent _value;
  // ignore: unused_field
  final $Res Function(ProfileEvent) _then;
}

/// @nodoc
abstract class _$getUserCopyWith<$Res> {
  factory _$getUserCopyWith(_getUser value, $Res Function(_getUser) then) =
      __$getUserCopyWithImpl<$Res>;
  $Res call({String id, String email, String name});
}

/// @nodoc
class __$getUserCopyWithImpl<$Res> extends _$ProfileEventCopyWithImpl<$Res>
    implements _$getUserCopyWith<$Res> {
  __$getUserCopyWithImpl(_getUser _value, $Res Function(_getUser) _then)
      : super(_value, (v) => _then(v as _getUser));

  @override
  _getUser get _value => super._value as _getUser;

  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
    Object? name = freezed,
  }) {
    return _then(_getUser(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_getUser implements _getUser {
  const _$_getUser({required this.id, required this.email, required this.name});

  @override
  final String id;
  @override
  final String email;
  @override
  final String name;

  @override
  String toString() {
    return 'ProfileEvent.getUser(id: $id, email: $email, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _getUser &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$getUserCopyWith<_getUser> get copyWith =>
      __$getUserCopyWithImpl<_getUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, String email, String name) getUser,
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
    required TResult Function() resetFailSuccess,
  }) {
    return getUser(id, email, name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id, String email, String name)? getUser,
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
    TResult Function()? resetFailSuccess,
  }) {
    return getUser?.call(id, email, name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String email, String name)? getUser,
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
    TResult Function()? resetFailSuccess,
    required TResult orElse(),
  }) {
    if (getUser != null) {
      return getUser(id, email, name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getUser value) getUser,
    required TResult Function(_addClub value) addClub,
    required TResult Function(_resetFailSuccess value) resetFailSuccess,
  }) {
    return getUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_getUser value)? getUser,
    TResult Function(_addClub value)? addClub,
    TResult Function(_resetFailSuccess value)? resetFailSuccess,
  }) {
    return getUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getUser value)? getUser,
    TResult Function(_addClub value)? addClub,
    TResult Function(_resetFailSuccess value)? resetFailSuccess,
    required TResult orElse(),
  }) {
    if (getUser != null) {
      return getUser(this);
    }
    return orElse();
  }
}

abstract class _getUser implements ProfileEvent {
  const factory _getUser(
      {required String id,
      required String email,
      required String name}) = _$_getUser;

  String get id;
  String get email;
  String get name;
  @JsonKey(ignore: true)
  _$getUserCopyWith<_getUser> get copyWith =>
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
class __$addClubCopyWithImpl<$Res> extends _$ProfileEventCopyWithImpl<$Res>
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
    return 'ProfileEvent.addClub(description: $description, email: $email, joinPreference: $joinPreference, name: $name, pictureId: $pictureId, picture: $picture, path: $path, fileName: $fileName)';
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
    required TResult Function(String id, String email, String name) getUser,
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
    required TResult Function() resetFailSuccess,
  }) {
    return addClub(description, email, joinPreference, name, pictureId, picture,
        path, fileName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id, String email, String name)? getUser,
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
    TResult Function()? resetFailSuccess,
  }) {
    return addClub?.call(description, email, joinPreference, name, pictureId,
        picture, path, fileName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String email, String name)? getUser,
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
    required TResult Function(_getUser value) getUser,
    required TResult Function(_addClub value) addClub,
    required TResult Function(_resetFailSuccess value) resetFailSuccess,
  }) {
    return addClub(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_getUser value)? getUser,
    TResult Function(_addClub value)? addClub,
    TResult Function(_resetFailSuccess value)? resetFailSuccess,
  }) {
    return addClub?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getUser value)? getUser,
    TResult Function(_addClub value)? addClub,
    TResult Function(_resetFailSuccess value)? resetFailSuccess,
    required TResult orElse(),
  }) {
    if (addClub != null) {
      return addClub(this);
    }
    return orElse();
  }
}

abstract class _addClub implements ProfileEvent {
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
abstract class _$resetFailSuccessCopyWith<$Res> {
  factory _$resetFailSuccessCopyWith(
          _resetFailSuccess value, $Res Function(_resetFailSuccess) then) =
      __$resetFailSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$resetFailSuccessCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res>
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
    return 'ProfileEvent.resetFailSuccess()';
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
    required TResult Function(String id, String email, String name) getUser,
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
    required TResult Function() resetFailSuccess,
  }) {
    return resetFailSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id, String email, String name)? getUser,
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
    TResult Function()? resetFailSuccess,
  }) {
    return resetFailSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String email, String name)? getUser,
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
    required TResult Function(_getUser value) getUser,
    required TResult Function(_addClub value) addClub,
    required TResult Function(_resetFailSuccess value) resetFailSuccess,
  }) {
    return resetFailSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_getUser value)? getUser,
    TResult Function(_addClub value)? addClub,
    TResult Function(_resetFailSuccess value)? resetFailSuccess,
  }) {
    return resetFailSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getUser value)? getUser,
    TResult Function(_addClub value)? addClub,
    TResult Function(_resetFailSuccess value)? resetFailSuccess,
    required TResult orElse(),
  }) {
    if (resetFailSuccess != null) {
      return resetFailSuccess(this);
    }
    return orElse();
  }
}

abstract class _resetFailSuccess implements ProfileEvent {
  const factory _resetFailSuccess() = _$_resetFailSuccess;
}

/// @nodoc
class _$ProfileStateTearOff {
  const _$ProfileStateTearOff();

  _ProfileState call({User? user, Failure? failure, Success? success}) {
    return _ProfileState(
      user: user,
      failure: failure,
      success: success,
    );
  }
}

/// @nodoc
const $ProfileState = _$ProfileStateTearOff();

/// @nodoc
mixin _$ProfileState {
  User? get user => throw _privateConstructorUsedError;
  Failure? get failure => throw _privateConstructorUsedError;
  Success? get success => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileStateCopyWith<ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res>;
  $Res call({User? user, Failure? failure, Success? success});

  $UserCopyWith<$Res>? get user;
  $FailureCopyWith<$Res>? get failure;
  $SuccessCopyWith<$Res>? get success;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res> implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  final ProfileState _value;
  // ignore: unused_field
  final $Res Function(ProfileState) _then;

  @override
  $Res call({
    Object? user = freezed,
    Object? failure = freezed,
    Object? success = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
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
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
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
abstract class _$ProfileStateCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory _$ProfileStateCopyWith(
          _ProfileState value, $Res Function(_ProfileState) then) =
      __$ProfileStateCopyWithImpl<$Res>;
  @override
  $Res call({User? user, Failure? failure, Success? success});

  @override
  $UserCopyWith<$Res>? get user;
  @override
  $FailureCopyWith<$Res>? get failure;
  @override
  $SuccessCopyWith<$Res>? get success;
}

/// @nodoc
class __$ProfileStateCopyWithImpl<$Res> extends _$ProfileStateCopyWithImpl<$Res>
    implements _$ProfileStateCopyWith<$Res> {
  __$ProfileStateCopyWithImpl(
      _ProfileState _value, $Res Function(_ProfileState) _then)
      : super(_value, (v) => _then(v as _ProfileState));

  @override
  _ProfileState get _value => super._value as _ProfileState;

  @override
  $Res call({
    Object? user = freezed,
    Object? failure = freezed,
    Object? success = freezed,
  }) {
    return _then(_ProfileState(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
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

class _$_ProfileState implements _ProfileState {
  const _$_ProfileState({this.user, this.failure, this.success});

  @override
  final User? user;
  @override
  final Failure? failure;
  @override
  final Success? success;

  @override
  String toString() {
    return 'ProfileState(user: $user, failure: $failure, success: $success)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProfileState &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality().equals(other.failure, failure) &&
            const DeepCollectionEquality().equals(other.success, success));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(user),
      const DeepCollectionEquality().hash(failure),
      const DeepCollectionEquality().hash(success));

  @JsonKey(ignore: true)
  @override
  _$ProfileStateCopyWith<_ProfileState> get copyWith =>
      __$ProfileStateCopyWithImpl<_ProfileState>(this, _$identity);
}

abstract class _ProfileState implements ProfileState {
  const factory _ProfileState(
      {User? user, Failure? failure, Success? success}) = _$_ProfileState;

  @override
  User? get user;
  @override
  Failure? get failure;
  @override
  Success? get success;
  @override
  @JsonKey(ignore: true)
  _$ProfileStateCopyWith<_ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}
