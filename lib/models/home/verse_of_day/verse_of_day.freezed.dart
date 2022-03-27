// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'verse_of_day.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VerseOfDay _$VerseOfDayFromJson(Map<String, dynamic> json) {
  return _VerseOfDay.fromJson(json);
}

/// @nodoc
class _$VerseOfDayTearOff {
  const _$VerseOfDayTearOff();

  _VerseOfDay call({required String verseOfDay}) {
    return _VerseOfDay(
      verseOfDay: verseOfDay,
    );
  }

  VerseOfDay fromJson(Map<String, Object?> json) {
    return VerseOfDay.fromJson(json);
  }
}

/// @nodoc
const $VerseOfDay = _$VerseOfDayTearOff();

/// @nodoc
mixin _$VerseOfDay {
  String get verseOfDay => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VerseOfDayCopyWith<VerseOfDay> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerseOfDayCopyWith<$Res> {
  factory $VerseOfDayCopyWith(
          VerseOfDay value, $Res Function(VerseOfDay) then) =
      _$VerseOfDayCopyWithImpl<$Res>;
  $Res call({String verseOfDay});
}

/// @nodoc
class _$VerseOfDayCopyWithImpl<$Res> implements $VerseOfDayCopyWith<$Res> {
  _$VerseOfDayCopyWithImpl(this._value, this._then);

  final VerseOfDay _value;
  // ignore: unused_field
  final $Res Function(VerseOfDay) _then;

  @override
  $Res call({
    Object? verseOfDay = freezed,
  }) {
    return _then(_value.copyWith(
      verseOfDay: verseOfDay == freezed
          ? _value.verseOfDay
          : verseOfDay // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$VerseOfDayCopyWith<$Res> implements $VerseOfDayCopyWith<$Res> {
  factory _$VerseOfDayCopyWith(
          _VerseOfDay value, $Res Function(_VerseOfDay) then) =
      __$VerseOfDayCopyWithImpl<$Res>;
  @override
  $Res call({String verseOfDay});
}

/// @nodoc
class __$VerseOfDayCopyWithImpl<$Res> extends _$VerseOfDayCopyWithImpl<$Res>
    implements _$VerseOfDayCopyWith<$Res> {
  __$VerseOfDayCopyWithImpl(
      _VerseOfDay _value, $Res Function(_VerseOfDay) _then)
      : super(_value, (v) => _then(v as _VerseOfDay));

  @override
  _VerseOfDay get _value => super._value as _VerseOfDay;

  @override
  $Res call({
    Object? verseOfDay = freezed,
  }) {
    return _then(_VerseOfDay(
      verseOfDay: verseOfDay == freezed
          ? _value.verseOfDay
          : verseOfDay // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VerseOfDay implements _VerseOfDay {
  const _$_VerseOfDay({required this.verseOfDay});

  factory _$_VerseOfDay.fromJson(Map<String, dynamic> json) =>
      _$$_VerseOfDayFromJson(json);

  @override
  final String verseOfDay;

  @override
  String toString() {
    return 'VerseOfDay(verseOfDay: $verseOfDay)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VerseOfDay &&
            const DeepCollectionEquality()
                .equals(other.verseOfDay, verseOfDay));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(verseOfDay));

  @JsonKey(ignore: true)
  @override
  _$VerseOfDayCopyWith<_VerseOfDay> get copyWith =>
      __$VerseOfDayCopyWithImpl<_VerseOfDay>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VerseOfDayToJson(this);
  }
}

abstract class _VerseOfDay implements VerseOfDay {
  const factory _VerseOfDay({required String verseOfDay}) = _$_VerseOfDay;

  factory _VerseOfDay.fromJson(Map<String, dynamic> json) =
      _$_VerseOfDay.fromJson;

  @override
  String get verseOfDay;
  @override
  @JsonKey(ignore: true)
  _$VerseOfDayCopyWith<_VerseOfDay> get copyWith =>
      throw _privateConstructorUsedError;
}
