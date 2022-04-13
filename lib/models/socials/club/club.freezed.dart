// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'club.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Club _$ClubFromJson(Map<String, dynamic> json) {
  return _Club.fromJson(json);
}

/// @nodoc
class _$ClubTearOff {
  const _$ClubTearOff();

  _Club call(
      {required String id,
      required List<String> admins,
      required String description,
      required List<String> members,
      required String name,
      required List<String> pending,
      required String pictureUrl,
      required int joinPreference}) {
    return _Club(
      id: id,
      admins: admins,
      description: description,
      members: members,
      name: name,
      pending: pending,
      pictureUrl: pictureUrl,
      joinPreference: joinPreference,
    );
  }

  Club fromJson(Map<String, Object?> json) {
    return Club.fromJson(json);
  }
}

/// @nodoc
const $Club = _$ClubTearOff();

/// @nodoc
mixin _$Club {
  String get id => throw _privateConstructorUsedError;
  List<String> get admins => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<String> get members => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<String> get pending => throw _privateConstructorUsedError;
  String get pictureUrl => throw _privateConstructorUsedError;
  int get joinPreference => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClubCopyWith<Club> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClubCopyWith<$Res> {
  factory $ClubCopyWith(Club value, $Res Function(Club) then) =
      _$ClubCopyWithImpl<$Res>;
  $Res call(
      {String id,
      List<String> admins,
      String description,
      List<String> members,
      String name,
      List<String> pending,
      String pictureUrl,
      int joinPreference});
}

/// @nodoc
class _$ClubCopyWithImpl<$Res> implements $ClubCopyWith<$Res> {
  _$ClubCopyWithImpl(this._value, this._then);

  final Club _value;
  // ignore: unused_field
  final $Res Function(Club) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? admins = freezed,
    Object? description = freezed,
    Object? members = freezed,
    Object? name = freezed,
    Object? pending = freezed,
    Object? pictureUrl = freezed,
    Object? joinPreference = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      admins: admins == freezed
          ? _value.admins
          : admins // ignore: cast_nullable_to_non_nullable
              as List<String>,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      members: members == freezed
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<String>,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      pending: pending == freezed
          ? _value.pending
          : pending // ignore: cast_nullable_to_non_nullable
              as List<String>,
      pictureUrl: pictureUrl == freezed
          ? _value.pictureUrl
          : pictureUrl // ignore: cast_nullable_to_non_nullable
              as String,
      joinPreference: joinPreference == freezed
          ? _value.joinPreference
          : joinPreference // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$ClubCopyWith<$Res> implements $ClubCopyWith<$Res> {
  factory _$ClubCopyWith(_Club value, $Res Function(_Club) then) =
      __$ClubCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      List<String> admins,
      String description,
      List<String> members,
      String name,
      List<String> pending,
      String pictureUrl,
      int joinPreference});
}

/// @nodoc
class __$ClubCopyWithImpl<$Res> extends _$ClubCopyWithImpl<$Res>
    implements _$ClubCopyWith<$Res> {
  __$ClubCopyWithImpl(_Club _value, $Res Function(_Club) _then)
      : super(_value, (v) => _then(v as _Club));

  @override
  _Club get _value => super._value as _Club;

  @override
  $Res call({
    Object? id = freezed,
    Object? admins = freezed,
    Object? description = freezed,
    Object? members = freezed,
    Object? name = freezed,
    Object? pending = freezed,
    Object? pictureUrl = freezed,
    Object? joinPreference = freezed,
  }) {
    return _then(_Club(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      admins: admins == freezed
          ? _value.admins
          : admins // ignore: cast_nullable_to_non_nullable
              as List<String>,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      members: members == freezed
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<String>,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      pending: pending == freezed
          ? _value.pending
          : pending // ignore: cast_nullable_to_non_nullable
              as List<String>,
      pictureUrl: pictureUrl == freezed
          ? _value.pictureUrl
          : pictureUrl // ignore: cast_nullable_to_non_nullable
              as String,
      joinPreference: joinPreference == freezed
          ? _value.joinPreference
          : joinPreference // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Club implements _Club {
  const _$_Club(
      {required this.id,
      required this.admins,
      required this.description,
      required this.members,
      required this.name,
      required this.pending,
      required this.pictureUrl,
      required this.joinPreference});

  factory _$_Club.fromJson(Map<String, dynamic> json) => _$$_ClubFromJson(json);

  @override
  final String id;
  @override
  final List<String> admins;
  @override
  final String description;
  @override
  final List<String> members;
  @override
  final String name;
  @override
  final List<String> pending;
  @override
  final String pictureUrl;
  @override
  final int joinPreference;

  @override
  String toString() {
    return 'Club(id: $id, admins: $admins, description: $description, members: $members, name: $name, pending: $pending, pictureUrl: $pictureUrl, joinPreference: $joinPreference)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Club &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.admins, admins) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.members, members) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.pending, pending) &&
            const DeepCollectionEquality()
                .equals(other.pictureUrl, pictureUrl) &&
            const DeepCollectionEquality()
                .equals(other.joinPreference, joinPreference));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(admins),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(members),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(pending),
      const DeepCollectionEquality().hash(pictureUrl),
      const DeepCollectionEquality().hash(joinPreference));

  @JsonKey(ignore: true)
  @override
  _$ClubCopyWith<_Club> get copyWith =>
      __$ClubCopyWithImpl<_Club>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ClubToJson(this);
  }
}

abstract class _Club implements Club {
  const factory _Club(
      {required String id,
      required List<String> admins,
      required String description,
      required List<String> members,
      required String name,
      required List<String> pending,
      required String pictureUrl,
      required int joinPreference}) = _$_Club;

  factory _Club.fromJson(Map<String, dynamic> json) = _$_Club.fromJson;

  @override
  String get id;
  @override
  List<String> get admins;
  @override
  String get description;
  @override
  List<String> get members;
  @override
  String get name;
  @override
  List<String> get pending;
  @override
  String get pictureUrl;
  @override
  int get joinPreference;
  @override
  @JsonKey(ignore: true)
  _$ClubCopyWith<_Club> get copyWith => throw _privateConstructorUsedError;
}
