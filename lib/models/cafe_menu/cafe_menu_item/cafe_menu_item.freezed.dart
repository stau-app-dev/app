// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cafe_menu_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CafeMenuItem _$CafeMenuItemFromJson(Map<String, dynamic> json) {
  return _CafeMenuItem.fromJson(json);
}

/// @nodoc
class _$CafeMenuItemTearOff {
  const _$CafeMenuItemTearOff();

  _CafeMenuItem call(
      {required String name,
      required String pictureId,
      required String pictureUrl,
      required double price,
      required bool isTodaysSpecial}) {
    return _CafeMenuItem(
      name: name,
      pictureId: pictureId,
      pictureUrl: pictureUrl,
      price: price,
      isTodaysSpecial: isTodaysSpecial,
    );
  }

  CafeMenuItem fromJson(Map<String, Object?> json) {
    return CafeMenuItem.fromJson(json);
  }
}

/// @nodoc
const $CafeMenuItem = _$CafeMenuItemTearOff();

/// @nodoc
mixin _$CafeMenuItem {
  String get name => throw _privateConstructorUsedError;
  String get pictureId => throw _privateConstructorUsedError;
  String get pictureUrl => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  bool get isTodaysSpecial => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CafeMenuItemCopyWith<CafeMenuItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CafeMenuItemCopyWith<$Res> {
  factory $CafeMenuItemCopyWith(
          CafeMenuItem value, $Res Function(CafeMenuItem) then) =
      _$CafeMenuItemCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String pictureId,
      String pictureUrl,
      double price,
      bool isTodaysSpecial});
}

/// @nodoc
class _$CafeMenuItemCopyWithImpl<$Res> implements $CafeMenuItemCopyWith<$Res> {
  _$CafeMenuItemCopyWithImpl(this._value, this._then);

  final CafeMenuItem _value;
  // ignore: unused_field
  final $Res Function(CafeMenuItem) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? pictureId = freezed,
    Object? pictureUrl = freezed,
    Object? price = freezed,
    Object? isTodaysSpecial = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      pictureId: pictureId == freezed
          ? _value.pictureId
          : pictureId // ignore: cast_nullable_to_non_nullable
              as String,
      pictureUrl: pictureUrl == freezed
          ? _value.pictureUrl
          : pictureUrl // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      isTodaysSpecial: isTodaysSpecial == freezed
          ? _value.isTodaysSpecial
          : isTodaysSpecial // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$CafeMenuItemCopyWith<$Res>
    implements $CafeMenuItemCopyWith<$Res> {
  factory _$CafeMenuItemCopyWith(
          _CafeMenuItem value, $Res Function(_CafeMenuItem) then) =
      __$CafeMenuItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      String pictureId,
      String pictureUrl,
      double price,
      bool isTodaysSpecial});
}

/// @nodoc
class __$CafeMenuItemCopyWithImpl<$Res> extends _$CafeMenuItemCopyWithImpl<$Res>
    implements _$CafeMenuItemCopyWith<$Res> {
  __$CafeMenuItemCopyWithImpl(
      _CafeMenuItem _value, $Res Function(_CafeMenuItem) _then)
      : super(_value, (v) => _then(v as _CafeMenuItem));

  @override
  _CafeMenuItem get _value => super._value as _CafeMenuItem;

  @override
  $Res call({
    Object? name = freezed,
    Object? pictureId = freezed,
    Object? pictureUrl = freezed,
    Object? price = freezed,
    Object? isTodaysSpecial = freezed,
  }) {
    return _then(_CafeMenuItem(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      pictureId: pictureId == freezed
          ? _value.pictureId
          : pictureId // ignore: cast_nullable_to_non_nullable
              as String,
      pictureUrl: pictureUrl == freezed
          ? _value.pictureUrl
          : pictureUrl // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      isTodaysSpecial: isTodaysSpecial == freezed
          ? _value.isTodaysSpecial
          : isTodaysSpecial // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CafeMenuItem implements _CafeMenuItem {
  const _$_CafeMenuItem(
      {required this.name,
      required this.pictureId,
      required this.pictureUrl,
      required this.price,
      required this.isTodaysSpecial});

  factory _$_CafeMenuItem.fromJson(Map<String, dynamic> json) =>
      _$$_CafeMenuItemFromJson(json);

  @override
  final String name;
  @override
  final String pictureId;
  @override
  final String pictureUrl;
  @override
  final double price;
  @override
  final bool isTodaysSpecial;

  @override
  String toString() {
    return 'CafeMenuItem(name: $name, pictureId: $pictureId, pictureUrl: $pictureUrl, price: $price, isTodaysSpecial: $isTodaysSpecial)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CafeMenuItem &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.pictureId, pictureId) &&
            const DeepCollectionEquality()
                .equals(other.pictureUrl, pictureUrl) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality()
                .equals(other.isTodaysSpecial, isTodaysSpecial));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(pictureId),
      const DeepCollectionEquality().hash(pictureUrl),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(isTodaysSpecial));

  @JsonKey(ignore: true)
  @override
  _$CafeMenuItemCopyWith<_CafeMenuItem> get copyWith =>
      __$CafeMenuItemCopyWithImpl<_CafeMenuItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CafeMenuItemToJson(this);
  }
}

abstract class _CafeMenuItem implements CafeMenuItem {
  const factory _CafeMenuItem(
      {required String name,
      required String pictureId,
      required String pictureUrl,
      required double price,
      required bool isTodaysSpecial}) = _$_CafeMenuItem;

  factory _CafeMenuItem.fromJson(Map<String, dynamic> json) =
      _$_CafeMenuItem.fromJson;

  @override
  String get name;
  @override
  String get pictureId;
  @override
  String get pictureUrl;
  @override
  double get price;
  @override
  bool get isTodaysSpecial;
  @override
  @JsonKey(ignore: true)
  _$CafeMenuItemCopyWith<_CafeMenuItem> get copyWith =>
      throw _privateConstructorUsedError;
}
