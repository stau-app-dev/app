// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'general_announcement.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GeneralAnnouncement _$GeneralAnnouncementFromJson(Map<String, dynamic> json) {
  return _GeneralAnnouncement.fromJson(json);
}

/// @nodoc
class _$GeneralAnnouncementTearOff {
  const _$GeneralAnnouncementTearOff();

  _GeneralAnnouncement call({required String title, required String content}) {
    return _GeneralAnnouncement(
      title: title,
      content: content,
    );
  }

  GeneralAnnouncement fromJson(Map<String, Object?> json) {
    return GeneralAnnouncement.fromJson(json);
  }
}

/// @nodoc
const $GeneralAnnouncement = _$GeneralAnnouncementTearOff();

/// @nodoc
mixin _$GeneralAnnouncement {
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeneralAnnouncementCopyWith<GeneralAnnouncement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeneralAnnouncementCopyWith<$Res> {
  factory $GeneralAnnouncementCopyWith(
          GeneralAnnouncement value, $Res Function(GeneralAnnouncement) then) =
      _$GeneralAnnouncementCopyWithImpl<$Res>;
  $Res call({String title, String content});
}

/// @nodoc
class _$GeneralAnnouncementCopyWithImpl<$Res>
    implements $GeneralAnnouncementCopyWith<$Res> {
  _$GeneralAnnouncementCopyWithImpl(this._value, this._then);

  final GeneralAnnouncement _value;
  // ignore: unused_field
  final $Res Function(GeneralAnnouncement) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? content = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$GeneralAnnouncementCopyWith<$Res>
    implements $GeneralAnnouncementCopyWith<$Res> {
  factory _$GeneralAnnouncementCopyWith(_GeneralAnnouncement value,
          $Res Function(_GeneralAnnouncement) then) =
      __$GeneralAnnouncementCopyWithImpl<$Res>;
  @override
  $Res call({String title, String content});
}

/// @nodoc
class __$GeneralAnnouncementCopyWithImpl<$Res>
    extends _$GeneralAnnouncementCopyWithImpl<$Res>
    implements _$GeneralAnnouncementCopyWith<$Res> {
  __$GeneralAnnouncementCopyWithImpl(
      _GeneralAnnouncement _value, $Res Function(_GeneralAnnouncement) _then)
      : super(_value, (v) => _then(v as _GeneralAnnouncement));

  @override
  _GeneralAnnouncement get _value => super._value as _GeneralAnnouncement;

  @override
  $Res call({
    Object? title = freezed,
    Object? content = freezed,
  }) {
    return _then(_GeneralAnnouncement(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GeneralAnnouncement implements _GeneralAnnouncement {
  const _$_GeneralAnnouncement({required this.title, required this.content});

  factory _$_GeneralAnnouncement.fromJson(Map<String, dynamic> json) =>
      _$$_GeneralAnnouncementFromJson(json);

  @override
  final String title;
  @override
  final String content;

  @override
  String toString() {
    return 'GeneralAnnouncement(title: $title, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GeneralAnnouncement &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.content, content));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(content));

  @JsonKey(ignore: true)
  @override
  _$GeneralAnnouncementCopyWith<_GeneralAnnouncement> get copyWith =>
      __$GeneralAnnouncementCopyWithImpl<_GeneralAnnouncement>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GeneralAnnouncementToJson(this);
  }
}

abstract class _GeneralAnnouncement implements GeneralAnnouncement {
  const factory _GeneralAnnouncement(
      {required String title,
      required String content}) = _$_GeneralAnnouncement;

  factory _GeneralAnnouncement.fromJson(Map<String, dynamic> json) =
      _$_GeneralAnnouncement.fromJson;

  @override
  String get title;
  @override
  String get content;
  @override
  @JsonKey(ignore: true)
  _$GeneralAnnouncementCopyWith<_GeneralAnnouncement> get copyWith =>
      throw _privateConstructorUsedError;
}
