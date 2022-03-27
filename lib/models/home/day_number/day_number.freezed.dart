// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'day_number.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DayNumber _$DayNumberFromJson(Map<String, dynamic> json) {
  return _DayNumber.fromJson(json);
}

/// @nodoc
class _$DayNumberTearOff {
  const _$DayNumberTearOff();

  _DayNumber call({int? dayNumber}) {
    return _DayNumber(
      dayNumber: dayNumber,
    );
  }

  DayNumber fromJson(Map<String, Object?> json) {
    return DayNumber.fromJson(json);
  }
}

/// @nodoc
const $DayNumber = _$DayNumberTearOff();

/// @nodoc
mixin _$DayNumber {
  int? get dayNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DayNumberCopyWith<DayNumber> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DayNumberCopyWith<$Res> {
  factory $DayNumberCopyWith(DayNumber value, $Res Function(DayNumber) then) =
      _$DayNumberCopyWithImpl<$Res>;
  $Res call({int? dayNumber});
}

/// @nodoc
class _$DayNumberCopyWithImpl<$Res> implements $DayNumberCopyWith<$Res> {
  _$DayNumberCopyWithImpl(this._value, this._then);

  final DayNumber _value;
  // ignore: unused_field
  final $Res Function(DayNumber) _then;

  @override
  $Res call({
    Object? dayNumber = freezed,
  }) {
    return _then(_value.copyWith(
      dayNumber: dayNumber == freezed
          ? _value.dayNumber
          : dayNumber // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$DayNumberCopyWith<$Res> implements $DayNumberCopyWith<$Res> {
  factory _$DayNumberCopyWith(
          _DayNumber value, $Res Function(_DayNumber) then) =
      __$DayNumberCopyWithImpl<$Res>;
  @override
  $Res call({int? dayNumber});
}

/// @nodoc
class __$DayNumberCopyWithImpl<$Res> extends _$DayNumberCopyWithImpl<$Res>
    implements _$DayNumberCopyWith<$Res> {
  __$DayNumberCopyWithImpl(_DayNumber _value, $Res Function(_DayNumber) _then)
      : super(_value, (v) => _then(v as _DayNumber));

  @override
  _DayNumber get _value => super._value as _DayNumber;

  @override
  $Res call({
    Object? dayNumber = freezed,
  }) {
    return _then(_DayNumber(
      dayNumber: dayNumber == freezed
          ? _value.dayNumber
          : dayNumber // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DayNumber implements _DayNumber {
  const _$_DayNumber({this.dayNumber});

  factory _$_DayNumber.fromJson(Map<String, dynamic> json) =>
      _$$_DayNumberFromJson(json);

  @override
  final int? dayNumber;

  @override
  String toString() {
    return 'DayNumber(dayNumber: $dayNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DayNumber &&
            const DeepCollectionEquality().equals(other.dayNumber, dayNumber));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(dayNumber));

  @JsonKey(ignore: true)
  @override
  _$DayNumberCopyWith<_DayNumber> get copyWith =>
      __$DayNumberCopyWithImpl<_DayNumber>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DayNumberToJson(this);
  }
}

abstract class _DayNumber implements DayNumber {
  const factory _DayNumber({int? dayNumber}) = _$_DayNumber;

  factory _DayNumber.fromJson(Map<String, dynamic> json) =
      _$_DayNumber.fromJson;

  @override
  int? get dayNumber;
  @override
  @JsonKey(ignore: true)
  _$DayNumberCopyWith<_DayNumber> get copyWith =>
      throw _privateConstructorUsedError;
}
