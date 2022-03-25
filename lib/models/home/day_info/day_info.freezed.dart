// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'day_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DayInfo _$DayInfoFromJson(Map<String, dynamic> json) {
  return _DayInfo.fromJson(json);
}

/// @nodoc
class _$DayInfoTearOff {
  const _$DayInfoTearOff();

  _DayInfo call({required int dayNumber, required bool isSnowDay}) {
    return _DayInfo(
      dayNumber: dayNumber,
      isSnowDay: isSnowDay,
    );
  }

  DayInfo fromJson(Map<String, Object?> json) {
    return DayInfo.fromJson(json);
  }
}

/// @nodoc
const $DayInfo = _$DayInfoTearOff();

/// @nodoc
mixin _$DayInfo {
  int get dayNumber => throw _privateConstructorUsedError;
  bool get isSnowDay => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DayInfoCopyWith<DayInfo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DayInfoCopyWith<$Res> {
  factory $DayInfoCopyWith(DayInfo value, $Res Function(DayInfo) then) =
      _$DayInfoCopyWithImpl<$Res>;
  $Res call({int dayNumber, bool isSnowDay});
}

/// @nodoc
class _$DayInfoCopyWithImpl<$Res> implements $DayInfoCopyWith<$Res> {
  _$DayInfoCopyWithImpl(this._value, this._then);

  final DayInfo _value;
  // ignore: unused_field
  final $Res Function(DayInfo) _then;

  @override
  $Res call({
    Object? dayNumber = freezed,
    Object? isSnowDay = freezed,
  }) {
    return _then(_value.copyWith(
      dayNumber: dayNumber == freezed
          ? _value.dayNumber
          : dayNumber // ignore: cast_nullable_to_non_nullable
              as int,
      isSnowDay: isSnowDay == freezed
          ? _value.isSnowDay
          : isSnowDay // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$DayInfoCopyWith<$Res> implements $DayInfoCopyWith<$Res> {
  factory _$DayInfoCopyWith(_DayInfo value, $Res Function(_DayInfo) then) =
      __$DayInfoCopyWithImpl<$Res>;
  @override
  $Res call({int dayNumber, bool isSnowDay});
}

/// @nodoc
class __$DayInfoCopyWithImpl<$Res> extends _$DayInfoCopyWithImpl<$Res>
    implements _$DayInfoCopyWith<$Res> {
  __$DayInfoCopyWithImpl(_DayInfo _value, $Res Function(_DayInfo) _then)
      : super(_value, (v) => _then(v as _DayInfo));

  @override
  _DayInfo get _value => super._value as _DayInfo;

  @override
  $Res call({
    Object? dayNumber = freezed,
    Object? isSnowDay = freezed,
  }) {
    return _then(_DayInfo(
      dayNumber: dayNumber == freezed
          ? _value.dayNumber
          : dayNumber // ignore: cast_nullable_to_non_nullable
              as int,
      isSnowDay: isSnowDay == freezed
          ? _value.isSnowDay
          : isSnowDay // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DayInfo implements _DayInfo {
  const _$_DayInfo({required this.dayNumber, required this.isSnowDay});

  factory _$_DayInfo.fromJson(Map<String, dynamic> json) =>
      _$$_DayInfoFromJson(json);

  @override
  final int dayNumber;
  @override
  final bool isSnowDay;

  @override
  String toString() {
    return 'DayInfo(dayNumber: $dayNumber, isSnowDay: $isSnowDay)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DayInfo &&
            const DeepCollectionEquality().equals(other.dayNumber, dayNumber) &&
            const DeepCollectionEquality().equals(other.isSnowDay, isSnowDay));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(dayNumber),
      const DeepCollectionEquality().hash(isSnowDay));

  @JsonKey(ignore: true)
  @override
  _$DayInfoCopyWith<_DayInfo> get copyWith =>
      __$DayInfoCopyWithImpl<_DayInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DayInfoToJson(this);
  }
}

abstract class _DayInfo implements DayInfo {
  const factory _DayInfo({required int dayNumber, required bool isSnowDay}) =
      _$_DayInfo;

  factory _DayInfo.fromJson(Map<String, dynamic> json) = _$_DayInfo.fromJson;

  @override
  int get dayNumber;
  @override
  bool get isSnowDay;
  @override
  @JsonKey(ignore: true)
  _$DayInfoCopyWith<_DayInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
