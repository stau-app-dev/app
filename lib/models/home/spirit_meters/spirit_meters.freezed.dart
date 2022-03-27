// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'spirit_meters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SpiritMeters _$SpiritMetersFromJson(Map<String, dynamic> json) {
  return _SpiritMeters.fromJson(json);
}

/// @nodoc
class _$SpiritMetersTearOff {
  const _$SpiritMetersTearOff();

  _SpiritMeters call(
      {required double nine,
      required double ten,
      required double eleven,
      required double twelve}) {
    return _SpiritMeters(
      nine: nine,
      ten: ten,
      eleven: eleven,
      twelve: twelve,
    );
  }

  SpiritMeters fromJson(Map<String, Object?> json) {
    return SpiritMeters.fromJson(json);
  }
}

/// @nodoc
const $SpiritMeters = _$SpiritMetersTearOff();

/// @nodoc
mixin _$SpiritMeters {
  double get nine => throw _privateConstructorUsedError;
  double get ten => throw _privateConstructorUsedError;
  double get eleven => throw _privateConstructorUsedError;
  double get twelve => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpiritMetersCopyWith<SpiritMeters> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpiritMetersCopyWith<$Res> {
  factory $SpiritMetersCopyWith(
          SpiritMeters value, $Res Function(SpiritMeters) then) =
      _$SpiritMetersCopyWithImpl<$Res>;
  $Res call({double nine, double ten, double eleven, double twelve});
}

/// @nodoc
class _$SpiritMetersCopyWithImpl<$Res> implements $SpiritMetersCopyWith<$Res> {
  _$SpiritMetersCopyWithImpl(this._value, this._then);

  final SpiritMeters _value;
  // ignore: unused_field
  final $Res Function(SpiritMeters) _then;

  @override
  $Res call({
    Object? nine = freezed,
    Object? ten = freezed,
    Object? eleven = freezed,
    Object? twelve = freezed,
  }) {
    return _then(_value.copyWith(
      nine: nine == freezed
          ? _value.nine
          : nine // ignore: cast_nullable_to_non_nullable
              as double,
      ten: ten == freezed
          ? _value.ten
          : ten // ignore: cast_nullable_to_non_nullable
              as double,
      eleven: eleven == freezed
          ? _value.eleven
          : eleven // ignore: cast_nullable_to_non_nullable
              as double,
      twelve: twelve == freezed
          ? _value.twelve
          : twelve // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$SpiritMetersCopyWith<$Res>
    implements $SpiritMetersCopyWith<$Res> {
  factory _$SpiritMetersCopyWith(
          _SpiritMeters value, $Res Function(_SpiritMeters) then) =
      __$SpiritMetersCopyWithImpl<$Res>;
  @override
  $Res call({double nine, double ten, double eleven, double twelve});
}

/// @nodoc
class __$SpiritMetersCopyWithImpl<$Res> extends _$SpiritMetersCopyWithImpl<$Res>
    implements _$SpiritMetersCopyWith<$Res> {
  __$SpiritMetersCopyWithImpl(
      _SpiritMeters _value, $Res Function(_SpiritMeters) _then)
      : super(_value, (v) => _then(v as _SpiritMeters));

  @override
  _SpiritMeters get _value => super._value as _SpiritMeters;

  @override
  $Res call({
    Object? nine = freezed,
    Object? ten = freezed,
    Object? eleven = freezed,
    Object? twelve = freezed,
  }) {
    return _then(_SpiritMeters(
      nine: nine == freezed
          ? _value.nine
          : nine // ignore: cast_nullable_to_non_nullable
              as double,
      ten: ten == freezed
          ? _value.ten
          : ten // ignore: cast_nullable_to_non_nullable
              as double,
      eleven: eleven == freezed
          ? _value.eleven
          : eleven // ignore: cast_nullable_to_non_nullable
              as double,
      twelve: twelve == freezed
          ? _value.twelve
          : twelve // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SpiritMeters implements _SpiritMeters {
  const _$_SpiritMeters(
      {required this.nine,
      required this.ten,
      required this.eleven,
      required this.twelve});

  factory _$_SpiritMeters.fromJson(Map<String, dynamic> json) =>
      _$$_SpiritMetersFromJson(json);

  @override
  final double nine;
  @override
  final double ten;
  @override
  final double eleven;
  @override
  final double twelve;

  @override
  String toString() {
    return 'SpiritMeters(nine: $nine, ten: $ten, eleven: $eleven, twelve: $twelve)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SpiritMeters &&
            const DeepCollectionEquality().equals(other.nine, nine) &&
            const DeepCollectionEquality().equals(other.ten, ten) &&
            const DeepCollectionEquality().equals(other.eleven, eleven) &&
            const DeepCollectionEquality().equals(other.twelve, twelve));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(nine),
      const DeepCollectionEquality().hash(ten),
      const DeepCollectionEquality().hash(eleven),
      const DeepCollectionEquality().hash(twelve));

  @JsonKey(ignore: true)
  @override
  _$SpiritMetersCopyWith<_SpiritMeters> get copyWith =>
      __$SpiritMetersCopyWithImpl<_SpiritMeters>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SpiritMetersToJson(this);
  }
}

abstract class _SpiritMeters implements SpiritMeters {
  const factory _SpiritMeters(
      {required double nine,
      required double ten,
      required double eleven,
      required double twelve}) = _$_SpiritMeters;

  factory _SpiritMeters.fromJson(Map<String, dynamic> json) =
      _$_SpiritMeters.fromJson;

  @override
  double get nine;
  @override
  double get ten;
  @override
  double get eleven;
  @override
  double get twelve;
  @override
  @JsonKey(ignore: true)
  _$SpiritMetersCopyWith<_SpiritMeters> get copyWith =>
      throw _privateConstructorUsedError;
}
