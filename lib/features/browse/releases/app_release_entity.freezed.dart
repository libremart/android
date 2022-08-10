// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_release_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppReleaseEntity _$AppReleaseEntityFromJson(Map<String, dynamic> json) {
  return _AppReleaseEntity.fromJson(json);
}

/// @nodoc
mixin _$AppReleaseEntity {
  String get id => throw _privateConstructorUsedError;
  String get updated => throw _privateConstructorUsedError;
  String get link => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;
  String get thumbnail => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppReleaseEntityCopyWith<AppReleaseEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppReleaseEntityCopyWith<$Res> {
  factory $AppReleaseEntityCopyWith(
          AppReleaseEntity value, $Res Function(AppReleaseEntity) then) =
      _$AppReleaseEntityCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String updated,
      String link,
      String title,
      String content,
      String author,
      String thumbnail});
}

/// @nodoc
class _$AppReleaseEntityCopyWithImpl<$Res>
    implements $AppReleaseEntityCopyWith<$Res> {
  _$AppReleaseEntityCopyWithImpl(this._value, this._then);

  final AppReleaseEntity _value;
  // ignore: unused_field
  final $Res Function(AppReleaseEntity) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? updated = freezed,
    Object? link = freezed,
    Object? title = freezed,
    Object? content = freezed,
    Object? author = freezed,
    Object? thumbnail = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      updated: updated == freezed
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as String,
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: thumbnail == freezed
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_AppReleaseEntityCopyWith<$Res>
    implements $AppReleaseEntityCopyWith<$Res> {
  factory _$$_AppReleaseEntityCopyWith(
          _$_AppReleaseEntity value, $Res Function(_$_AppReleaseEntity) then) =
      __$$_AppReleaseEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String updated,
      String link,
      String title,
      String content,
      String author,
      String thumbnail});
}

/// @nodoc
class __$$_AppReleaseEntityCopyWithImpl<$Res>
    extends _$AppReleaseEntityCopyWithImpl<$Res>
    implements _$$_AppReleaseEntityCopyWith<$Res> {
  __$$_AppReleaseEntityCopyWithImpl(
      _$_AppReleaseEntity _value, $Res Function(_$_AppReleaseEntity) _then)
      : super(_value, (v) => _then(v as _$_AppReleaseEntity));

  @override
  _$_AppReleaseEntity get _value => super._value as _$_AppReleaseEntity;

  @override
  $Res call({
    Object? id = freezed,
    Object? updated = freezed,
    Object? link = freezed,
    Object? title = freezed,
    Object? content = freezed,
    Object? author = freezed,
    Object? thumbnail = freezed,
  }) {
    return _then(_$_AppReleaseEntity(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      updated: updated == freezed
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as String,
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: thumbnail == freezed
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AppReleaseEntity extends _AppReleaseEntity {
  const _$_AppReleaseEntity(
      {required this.id,
      required this.updated,
      required this.link,
      required this.title,
      required this.content,
      required this.author,
      required this.thumbnail})
      : super._();

  factory _$_AppReleaseEntity.fromJson(Map<String, dynamic> json) =>
      _$$_AppReleaseEntityFromJson(json);

  @override
  final String id;
  @override
  final String updated;
  @override
  final String link;
  @override
  final String title;
  @override
  final String content;
  @override
  final String author;
  @override
  final String thumbnail;

  @override
  String toString() {
    return 'AppReleaseEntity(id: $id, updated: $updated, link: $link, title: $title, content: $content, author: $author, thumbnail: $thumbnail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppReleaseEntity &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.updated, updated) &&
            const DeepCollectionEquality().equals(other.link, link) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.content, content) &&
            const DeepCollectionEquality().equals(other.author, author) &&
            const DeepCollectionEquality().equals(other.thumbnail, thumbnail));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(updated),
      const DeepCollectionEquality().hash(link),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(content),
      const DeepCollectionEquality().hash(author),
      const DeepCollectionEquality().hash(thumbnail));

  @JsonKey(ignore: true)
  @override
  _$$_AppReleaseEntityCopyWith<_$_AppReleaseEntity> get copyWith =>
      __$$_AppReleaseEntityCopyWithImpl<_$_AppReleaseEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppReleaseEntityToJson(
      this,
    );
  }
}

abstract class _AppReleaseEntity extends AppReleaseEntity {
  const factory _AppReleaseEntity(
      {required final String id,
      required final String updated,
      required final String link,
      required final String title,
      required final String content,
      required final String author,
      required final String thumbnail}) = _$_AppReleaseEntity;
  const _AppReleaseEntity._() : super._();

  factory _AppReleaseEntity.fromJson(Map<String, dynamic> json) =
      _$_AppReleaseEntity.fromJson;

  @override
  String get id;
  @override
  String get updated;
  @override
  String get link;
  @override
  String get title;
  @override
  String get content;
  @override
  String get author;
  @override
  String get thumbnail;
  @override
  @JsonKey(ignore: true)
  _$$_AppReleaseEntityCopyWith<_$_AppReleaseEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
