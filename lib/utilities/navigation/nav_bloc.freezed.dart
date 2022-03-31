// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'nav_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NavEventTearOff {
  const _$NavEventTearOff();

  _changeScreen changeScreen(
      {required ENav screen, required BuildContext context}) {
    return _changeScreen(
      screen: screen,
      context: context,
    );
  }

  _setNavbarVisible setNavbarVisible({required bool isVisible}) {
    return _setNavbarVisible(
      isVisible: isVisible,
    );
  }
}

/// @nodoc
const $NavEvent = _$NavEventTearOff();

/// @nodoc
mixin _$NavEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ENav screen, BuildContext context) changeScreen,
    required TResult Function(bool isVisible) setNavbarVisible,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ENav screen, BuildContext context)? changeScreen,
    TResult Function(bool isVisible)? setNavbarVisible,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ENav screen, BuildContext context)? changeScreen,
    TResult Function(bool isVisible)? setNavbarVisible,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_changeScreen value) changeScreen,
    required TResult Function(_setNavbarVisible value) setNavbarVisible,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_changeScreen value)? changeScreen,
    TResult Function(_setNavbarVisible value)? setNavbarVisible,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_changeScreen value)? changeScreen,
    TResult Function(_setNavbarVisible value)? setNavbarVisible,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavEventCopyWith<$Res> {
  factory $NavEventCopyWith(NavEvent value, $Res Function(NavEvent) then) =
      _$NavEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$NavEventCopyWithImpl<$Res> implements $NavEventCopyWith<$Res> {
  _$NavEventCopyWithImpl(this._value, this._then);

  final NavEvent _value;
  // ignore: unused_field
  final $Res Function(NavEvent) _then;
}

/// @nodoc
abstract class _$changeScreenCopyWith<$Res> {
  factory _$changeScreenCopyWith(
          _changeScreen value, $Res Function(_changeScreen) then) =
      __$changeScreenCopyWithImpl<$Res>;
  $Res call({ENav screen, BuildContext context});
}

/// @nodoc
class __$changeScreenCopyWithImpl<$Res> extends _$NavEventCopyWithImpl<$Res>
    implements _$changeScreenCopyWith<$Res> {
  __$changeScreenCopyWithImpl(
      _changeScreen _value, $Res Function(_changeScreen) _then)
      : super(_value, (v) => _then(v as _changeScreen));

  @override
  _changeScreen get _value => super._value as _changeScreen;

  @override
  $Res call({
    Object? screen = freezed,
    Object? context = freezed,
  }) {
    return _then(_changeScreen(
      screen: screen == freezed
          ? _value.screen
          : screen // ignore: cast_nullable_to_non_nullable
              as ENav,
      context: context == freezed
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$_changeScreen implements _changeScreen {
  const _$_changeScreen({required this.screen, required this.context});

  @override
  final ENav screen;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'NavEvent.changeScreen(screen: $screen, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _changeScreen &&
            const DeepCollectionEquality().equals(other.screen, screen) &&
            const DeepCollectionEquality().equals(other.context, context));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(screen),
      const DeepCollectionEquality().hash(context));

  @JsonKey(ignore: true)
  @override
  _$changeScreenCopyWith<_changeScreen> get copyWith =>
      __$changeScreenCopyWithImpl<_changeScreen>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ENav screen, BuildContext context) changeScreen,
    required TResult Function(bool isVisible) setNavbarVisible,
  }) {
    return changeScreen(screen, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ENav screen, BuildContext context)? changeScreen,
    TResult Function(bool isVisible)? setNavbarVisible,
  }) {
    return changeScreen?.call(screen, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ENav screen, BuildContext context)? changeScreen,
    TResult Function(bool isVisible)? setNavbarVisible,
    required TResult orElse(),
  }) {
    if (changeScreen != null) {
      return changeScreen(screen, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_changeScreen value) changeScreen,
    required TResult Function(_setNavbarVisible value) setNavbarVisible,
  }) {
    return changeScreen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_changeScreen value)? changeScreen,
    TResult Function(_setNavbarVisible value)? setNavbarVisible,
  }) {
    return changeScreen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_changeScreen value)? changeScreen,
    TResult Function(_setNavbarVisible value)? setNavbarVisible,
    required TResult orElse(),
  }) {
    if (changeScreen != null) {
      return changeScreen(this);
    }
    return orElse();
  }
}

abstract class _changeScreen implements NavEvent {
  const factory _changeScreen(
      {required ENav screen, required BuildContext context}) = _$_changeScreen;

  ENav get screen;
  BuildContext get context;
  @JsonKey(ignore: true)
  _$changeScreenCopyWith<_changeScreen> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$setNavbarVisibleCopyWith<$Res> {
  factory _$setNavbarVisibleCopyWith(
          _setNavbarVisible value, $Res Function(_setNavbarVisible) then) =
      __$setNavbarVisibleCopyWithImpl<$Res>;
  $Res call({bool isVisible});
}

/// @nodoc
class __$setNavbarVisibleCopyWithImpl<$Res> extends _$NavEventCopyWithImpl<$Res>
    implements _$setNavbarVisibleCopyWith<$Res> {
  __$setNavbarVisibleCopyWithImpl(
      _setNavbarVisible _value, $Res Function(_setNavbarVisible) _then)
      : super(_value, (v) => _then(v as _setNavbarVisible));

  @override
  _setNavbarVisible get _value => super._value as _setNavbarVisible;

  @override
  $Res call({
    Object? isVisible = freezed,
  }) {
    return _then(_setNavbarVisible(
      isVisible: isVisible == freezed
          ? _value.isVisible
          : isVisible // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_setNavbarVisible implements _setNavbarVisible {
  const _$_setNavbarVisible({required this.isVisible});

  @override
  final bool isVisible;

  @override
  String toString() {
    return 'NavEvent.setNavbarVisible(isVisible: $isVisible)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _setNavbarVisible &&
            const DeepCollectionEquality().equals(other.isVisible, isVisible));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(isVisible));

  @JsonKey(ignore: true)
  @override
  _$setNavbarVisibleCopyWith<_setNavbarVisible> get copyWith =>
      __$setNavbarVisibleCopyWithImpl<_setNavbarVisible>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ENav screen, BuildContext context) changeScreen,
    required TResult Function(bool isVisible) setNavbarVisible,
  }) {
    return setNavbarVisible(isVisible);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ENav screen, BuildContext context)? changeScreen,
    TResult Function(bool isVisible)? setNavbarVisible,
  }) {
    return setNavbarVisible?.call(isVisible);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ENav screen, BuildContext context)? changeScreen,
    TResult Function(bool isVisible)? setNavbarVisible,
    required TResult orElse(),
  }) {
    if (setNavbarVisible != null) {
      return setNavbarVisible(isVisible);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_changeScreen value) changeScreen,
    required TResult Function(_setNavbarVisible value) setNavbarVisible,
  }) {
    return setNavbarVisible(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_changeScreen value)? changeScreen,
    TResult Function(_setNavbarVisible value)? setNavbarVisible,
  }) {
    return setNavbarVisible?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_changeScreen value)? changeScreen,
    TResult Function(_setNavbarVisible value)? setNavbarVisible,
    required TResult orElse(),
  }) {
    if (setNavbarVisible != null) {
      return setNavbarVisible(this);
    }
    return orElse();
  }
}

abstract class _setNavbarVisible implements NavEvent {
  const factory _setNavbarVisible({required bool isVisible}) =
      _$_setNavbarVisible;

  bool get isVisible;
  @JsonKey(ignore: true)
  _$setNavbarVisibleCopyWith<_setNavbarVisible> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$NavStateTearOff {
  const _$NavStateTearOff();

  _NavState call({bool navbarVisible = true}) {
    return _NavState(
      navbarVisible: navbarVisible,
    );
  }
}

/// @nodoc
const $NavState = _$NavStateTearOff();

/// @nodoc
mixin _$NavState {
  bool get navbarVisible => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NavStateCopyWith<NavState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavStateCopyWith<$Res> {
  factory $NavStateCopyWith(NavState value, $Res Function(NavState) then) =
      _$NavStateCopyWithImpl<$Res>;
  $Res call({bool navbarVisible});
}

/// @nodoc
class _$NavStateCopyWithImpl<$Res> implements $NavStateCopyWith<$Res> {
  _$NavStateCopyWithImpl(this._value, this._then);

  final NavState _value;
  // ignore: unused_field
  final $Res Function(NavState) _then;

  @override
  $Res call({
    Object? navbarVisible = freezed,
  }) {
    return _then(_value.copyWith(
      navbarVisible: navbarVisible == freezed
          ? _value.navbarVisible
          : navbarVisible // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$NavStateCopyWith<$Res> implements $NavStateCopyWith<$Res> {
  factory _$NavStateCopyWith(_NavState value, $Res Function(_NavState) then) =
      __$NavStateCopyWithImpl<$Res>;
  @override
  $Res call({bool navbarVisible});
}

/// @nodoc
class __$NavStateCopyWithImpl<$Res> extends _$NavStateCopyWithImpl<$Res>
    implements _$NavStateCopyWith<$Res> {
  __$NavStateCopyWithImpl(_NavState _value, $Res Function(_NavState) _then)
      : super(_value, (v) => _then(v as _NavState));

  @override
  _NavState get _value => super._value as _NavState;

  @override
  $Res call({
    Object? navbarVisible = freezed,
  }) {
    return _then(_NavState(
      navbarVisible: navbarVisible == freezed
          ? _value.navbarVisible
          : navbarVisible // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_NavState implements _NavState {
  const _$_NavState({this.navbarVisible = true});

  @JsonKey()
  @override
  final bool navbarVisible;

  @override
  String toString() {
    return 'NavState(navbarVisible: $navbarVisible)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NavState &&
            const DeepCollectionEquality()
                .equals(other.navbarVisible, navbarVisible));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(navbarVisible));

  @JsonKey(ignore: true)
  @override
  _$NavStateCopyWith<_NavState> get copyWith =>
      __$NavStateCopyWithImpl<_NavState>(this, _$identity);
}

abstract class _NavState implements NavState {
  const factory _NavState({bool navbarVisible}) = _$_NavState;

  @override
  bool get navbarVisible;
  @override
  @JsonKey(ignore: true)
  _$NavStateCopyWith<_NavState> get copyWith =>
      throw _privateConstructorUsedError;
}
