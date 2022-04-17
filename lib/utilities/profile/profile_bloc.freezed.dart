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

  _refreshUser refreshUser() {
    return const _refreshUser();
  }

  _updateUserField updateUserField(
      {required String field, required dynamic value}) {
    return _updateUserField(
      field: field,
      value: value,
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
    required TResult Function() refreshUser,
    required TResult Function(String field, dynamic value) updateUserField,
    required TResult Function() resetFailSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id, String email, String name)? getUser,
    TResult Function()? refreshUser,
    TResult Function(String field, dynamic value)? updateUserField,
    TResult Function()? resetFailSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String email, String name)? getUser,
    TResult Function()? refreshUser,
    TResult Function(String field, dynamic value)? updateUserField,
    TResult Function()? resetFailSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getUser value) getUser,
    required TResult Function(_refreshUser value) refreshUser,
    required TResult Function(_updateUserField value) updateUserField,
    required TResult Function(_resetFailSuccess value) resetFailSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_getUser value)? getUser,
    TResult Function(_refreshUser value)? refreshUser,
    TResult Function(_updateUserField value)? updateUserField,
    TResult Function(_resetFailSuccess value)? resetFailSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getUser value)? getUser,
    TResult Function(_refreshUser value)? refreshUser,
    TResult Function(_updateUserField value)? updateUserField,
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

class _$_getUser with DiagnosticableTreeMixin implements _getUser {
  const _$_getUser({required this.id, required this.email, required this.name});

  @override
  final String id;
  @override
  final String email;
  @override
  final String name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProfileEvent.getUser(id: $id, email: $email, name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProfileEvent.getUser'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('name', name));
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
    required TResult Function() refreshUser,
    required TResult Function(String field, dynamic value) updateUserField,
    required TResult Function() resetFailSuccess,
  }) {
    return getUser(id, email, name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id, String email, String name)? getUser,
    TResult Function()? refreshUser,
    TResult Function(String field, dynamic value)? updateUserField,
    TResult Function()? resetFailSuccess,
  }) {
    return getUser?.call(id, email, name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String email, String name)? getUser,
    TResult Function()? refreshUser,
    TResult Function(String field, dynamic value)? updateUserField,
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
    required TResult Function(_refreshUser value) refreshUser,
    required TResult Function(_updateUserField value) updateUserField,
    required TResult Function(_resetFailSuccess value) resetFailSuccess,
  }) {
    return getUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_getUser value)? getUser,
    TResult Function(_refreshUser value)? refreshUser,
    TResult Function(_updateUserField value)? updateUserField,
    TResult Function(_resetFailSuccess value)? resetFailSuccess,
  }) {
    return getUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getUser value)? getUser,
    TResult Function(_refreshUser value)? refreshUser,
    TResult Function(_updateUserField value)? updateUserField,
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
abstract class _$refreshUserCopyWith<$Res> {
  factory _$refreshUserCopyWith(
          _refreshUser value, $Res Function(_refreshUser) then) =
      __$refreshUserCopyWithImpl<$Res>;
}

/// @nodoc
class __$refreshUserCopyWithImpl<$Res> extends _$ProfileEventCopyWithImpl<$Res>
    implements _$refreshUserCopyWith<$Res> {
  __$refreshUserCopyWithImpl(
      _refreshUser _value, $Res Function(_refreshUser) _then)
      : super(_value, (v) => _then(v as _refreshUser));

  @override
  _refreshUser get _value => super._value as _refreshUser;
}

/// @nodoc

class _$_refreshUser with DiagnosticableTreeMixin implements _refreshUser {
  const _$_refreshUser();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProfileEvent.refreshUser()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ProfileEvent.refreshUser'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _refreshUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, String email, String name) getUser,
    required TResult Function() refreshUser,
    required TResult Function(String field, dynamic value) updateUserField,
    required TResult Function() resetFailSuccess,
  }) {
    return refreshUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id, String email, String name)? getUser,
    TResult Function()? refreshUser,
    TResult Function(String field, dynamic value)? updateUserField,
    TResult Function()? resetFailSuccess,
  }) {
    return refreshUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String email, String name)? getUser,
    TResult Function()? refreshUser,
    TResult Function(String field, dynamic value)? updateUserField,
    TResult Function()? resetFailSuccess,
    required TResult orElse(),
  }) {
    if (refreshUser != null) {
      return refreshUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getUser value) getUser,
    required TResult Function(_refreshUser value) refreshUser,
    required TResult Function(_updateUserField value) updateUserField,
    required TResult Function(_resetFailSuccess value) resetFailSuccess,
  }) {
    return refreshUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_getUser value)? getUser,
    TResult Function(_refreshUser value)? refreshUser,
    TResult Function(_updateUserField value)? updateUserField,
    TResult Function(_resetFailSuccess value)? resetFailSuccess,
  }) {
    return refreshUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getUser value)? getUser,
    TResult Function(_refreshUser value)? refreshUser,
    TResult Function(_updateUserField value)? updateUserField,
    TResult Function(_resetFailSuccess value)? resetFailSuccess,
    required TResult orElse(),
  }) {
    if (refreshUser != null) {
      return refreshUser(this);
    }
    return orElse();
  }
}

abstract class _refreshUser implements ProfileEvent {
  const factory _refreshUser() = _$_refreshUser;
}

/// @nodoc
abstract class _$updateUserFieldCopyWith<$Res> {
  factory _$updateUserFieldCopyWith(
          _updateUserField value, $Res Function(_updateUserField) then) =
      __$updateUserFieldCopyWithImpl<$Res>;
  $Res call({String field, dynamic value});
}

/// @nodoc
class __$updateUserFieldCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res>
    implements _$updateUserFieldCopyWith<$Res> {
  __$updateUserFieldCopyWithImpl(
      _updateUserField _value, $Res Function(_updateUserField) _then)
      : super(_value, (v) => _then(v as _updateUserField));

  @override
  _updateUserField get _value => super._value as _updateUserField;

  @override
  $Res call({
    Object? field = freezed,
    Object? value = freezed,
  }) {
    return _then(_updateUserField(
      field: field == freezed
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as String,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$_updateUserField
    with DiagnosticableTreeMixin
    implements _updateUserField {
  const _$_updateUserField({required this.field, required this.value});

  @override
  final String field;
  @override
  final dynamic value;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProfileEvent.updateUserField(field: $field, value: $value)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProfileEvent.updateUserField'))
      ..add(DiagnosticsProperty('field', field))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _updateUserField &&
            const DeepCollectionEquality().equals(other.field, field) &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(field),
      const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$updateUserFieldCopyWith<_updateUserField> get copyWith =>
      __$updateUserFieldCopyWithImpl<_updateUserField>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, String email, String name) getUser,
    required TResult Function() refreshUser,
    required TResult Function(String field, dynamic value) updateUserField,
    required TResult Function() resetFailSuccess,
  }) {
    return updateUserField(field, value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id, String email, String name)? getUser,
    TResult Function()? refreshUser,
    TResult Function(String field, dynamic value)? updateUserField,
    TResult Function()? resetFailSuccess,
  }) {
    return updateUserField?.call(field, value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String email, String name)? getUser,
    TResult Function()? refreshUser,
    TResult Function(String field, dynamic value)? updateUserField,
    TResult Function()? resetFailSuccess,
    required TResult orElse(),
  }) {
    if (updateUserField != null) {
      return updateUserField(field, value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getUser value) getUser,
    required TResult Function(_refreshUser value) refreshUser,
    required TResult Function(_updateUserField value) updateUserField,
    required TResult Function(_resetFailSuccess value) resetFailSuccess,
  }) {
    return updateUserField(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_getUser value)? getUser,
    TResult Function(_refreshUser value)? refreshUser,
    TResult Function(_updateUserField value)? updateUserField,
    TResult Function(_resetFailSuccess value)? resetFailSuccess,
  }) {
    return updateUserField?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getUser value)? getUser,
    TResult Function(_refreshUser value)? refreshUser,
    TResult Function(_updateUserField value)? updateUserField,
    TResult Function(_resetFailSuccess value)? resetFailSuccess,
    required TResult orElse(),
  }) {
    if (updateUserField != null) {
      return updateUserField(this);
    }
    return orElse();
  }
}

abstract class _updateUserField implements ProfileEvent {
  const factory _updateUserField(
      {required String field, required dynamic value}) = _$_updateUserField;

  String get field;
  dynamic get value;
  @JsonKey(ignore: true)
  _$updateUserFieldCopyWith<_updateUserField> get copyWith =>
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

class _$_resetFailSuccess
    with DiagnosticableTreeMixin
    implements _resetFailSuccess {
  const _$_resetFailSuccess();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProfileEvent.resetFailSuccess()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProfileEvent.resetFailSuccess'));
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
    required TResult Function() refreshUser,
    required TResult Function(String field, dynamic value) updateUserField,
    required TResult Function() resetFailSuccess,
  }) {
    return resetFailSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id, String email, String name)? getUser,
    TResult Function()? refreshUser,
    TResult Function(String field, dynamic value)? updateUserField,
    TResult Function()? resetFailSuccess,
  }) {
    return resetFailSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String email, String name)? getUser,
    TResult Function()? refreshUser,
    TResult Function(String field, dynamic value)? updateUserField,
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
    required TResult Function(_refreshUser value) refreshUser,
    required TResult Function(_updateUserField value) updateUserField,
    required TResult Function(_resetFailSuccess value) resetFailSuccess,
  }) {
    return resetFailSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_getUser value)? getUser,
    TResult Function(_refreshUser value)? refreshUser,
    TResult Function(_updateUserField value)? updateUserField,
    TResult Function(_resetFailSuccess value)? resetFailSuccess,
  }) {
    return resetFailSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getUser value)? getUser,
    TResult Function(_refreshUser value)? refreshUser,
    TResult Function(_updateUserField value)? updateUserField,
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

class _$_ProfileState with DiagnosticableTreeMixin implements _ProfileState {
  const _$_ProfileState({this.user, this.failure, this.success});

  @override
  final User? user;
  @override
  final Failure? failure;
  @override
  final Success? success;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProfileState(user: $user, failure: $failure, success: $success)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProfileState'))
      ..add(DiagnosticsProperty('user', user))
      ..add(DiagnosticsProperty('failure', failure))
      ..add(DiagnosticsProperty('success', success));
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
