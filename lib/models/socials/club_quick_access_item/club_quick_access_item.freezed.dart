// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'club_quick_access_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ClubQuickAccessItem _$ClubQuickAccessItemFromJson(Map<String, dynamic> json) {
  return _ClubQuickAccessItem.fromJson(json);
}

/// @nodoc
class _$ClubQuickAccessItemTearOff {
  const _$ClubQuickAccessItemTearOff();

  _ClubQuickAccessItem call(
      {required String id,
      required String name,
      required String pictureId,
      required String pictureUrl}) {
    return _ClubQuickAccessItem(
      id: id,
      name: name,
      pictureId: pictureId,
      pictureUrl: pictureUrl,
    );
  }

  ClubQuickAccessItem fromJson(Map<String, Object?> json) {
    return ClubQuickAccessItem.fromJson(json);
  }
}

/// @nodoc
const $ClubQuickAccessItem = _$ClubQuickAccessItemTearOff();

/// @nodoc
mixin _$ClubQuickAccessItem {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get pictureId => throw _privateConstructorUsedError;
  String get pictureUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClubQuickAccessItemCopyWith<ClubQuickAccessItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClubQuickAccessItemCopyWith<$Res> {
  factory $ClubQuickAccessItemCopyWith(
          ClubQuickAccessItem value, $Res Function(ClubQuickAccessItem) then) =
      _$ClubQuickAccessItemCopyWithImpl<$Res>;
  $Res call({String id, String name, String pictureId, String pictureUrl});
}

/// @nodoc
class _$ClubQuickAccessItemCopyWithImpl<$Res>
    implements $ClubQuickAccessItemCopyWith<$Res> {
  _$ClubQuickAccessItemCopyWithImpl(this._value, this._then);

  final ClubQuickAccessItem _value;
  // ignore: unused_field
  final $Res Function(ClubQuickAccessItem) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? pictureId = freezed,
    Object? pictureUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
    ));
  }
}

/// @nodoc
abstract class _$ClubQuickAccessItemCopyWith<$Res>
    implements $ClubQuickAccessItemCopyWith<$Res> {
  factory _$ClubQuickAccessItemCopyWith(_ClubQuickAccessItem value,
          $Res Function(_ClubQuickAccessItem) then) =
      __$ClubQuickAccessItemCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name, String pictureId, String pictureUrl});
}

/// @nodoc
class __$ClubQuickAccessItemCopyWithImpl<$Res>
    extends _$ClubQuickAccessItemCopyWithImpl<$Res>
    implements _$ClubQuickAccessItemCopyWith<$Res> {
  __$ClubQuickAccessItemCopyWithImpl(
      _ClubQuickAccessItem _value, $Res Function(_ClubQuickAccessItem) _then)
      : super(_value, (v) => _then(v as _ClubQuickAccessItem));

  @override
  _ClubQuickAccessItem get _value => super._value as _ClubQuickAccessItem;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? pictureId = freezed,
    Object? pictureUrl = freezed,
  }) {
    return _then(_ClubQuickAccessItem(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ClubQuickAccessItem implements _ClubQuickAccessItem {
  const _$_ClubQuickAccessItem(
      {required this.id,
      required this.name,
      required this.pictureId,
      required this.pictureUrl});

  factory _$_ClubQuickAccessItem.fromJson(Map<String, dynamic> json) =>
      _$$_ClubQuickAccessItemFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String pictureId;
  @override
  final String pictureUrl;

  @override
  String toString() {
    return 'ClubQuickAccessItem(id: $id, name: $name, pictureId: $pictureId, pictureUrl: $pictureUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ClubQuickAccessItem &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.pictureId, pictureId) &&
            const DeepCollectionEquality()
                .equals(other.pictureUrl, pictureUrl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(pictureId),
      const DeepCollectionEquality().hash(pictureUrl));

  @JsonKey(ignore: true)
  @override
  _$ClubQuickAccessItemCopyWith<_ClubQuickAccessItem> get copyWith =>
      __$ClubQuickAccessItemCopyWithImpl<_ClubQuickAccessItem>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ClubQuickAccessItemToJson(this);
  }
}

abstract class _ClubQuickAccessItem implements ClubQuickAccessItem {
  const factory _ClubQuickAccessItem(
      {required String id,
      required String name,
      required String pictureId,
      required String pictureUrl}) = _$_ClubQuickAccessItem;

  factory _ClubQuickAccessItem.fromJson(Map<String, dynamic> json) =
      _$_ClubQuickAccessItem.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get pictureId;
  @override
  String get pictureUrl;
  @override
  @JsonKey(ignore: true)
  _$ClubQuickAccessItemCopyWith<_ClubQuickAccessItem> get copyWith =>
      throw _privateConstructorUsedError;
}
