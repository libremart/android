// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_release_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppRelease {
  String? get id => throw _privateConstructorUsedError;
  DateTime? get updated => throw _privateConstructorUsedError;
  List<String?>? get links => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  List<String?>? get authors => throw _privateConstructorUsedError;
  String? get published => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppReleaseCopyWith<AppRelease> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppReleaseCopyWith<$Res> {
  factory $AppReleaseCopyWith(
          AppRelease value, $Res Function(AppRelease) then) =
      _$AppReleaseCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      DateTime? updated,
      List<String?>? links,
      String? title,
      String? content,
      List<String?>? authors,
      String? published});
}

/// @nodoc
class _$AppReleaseCopyWithImpl<$Res> implements $AppReleaseCopyWith<$Res> {
  _$AppReleaseCopyWithImpl(this._value, this._then);

  final AppRelease _value;
  // ignore: unused_field
  final $Res Function(AppRelease) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? updated = freezed,
    Object? links = freezed,
    Object? title = freezed,
    Object? content = freezed,
    Object? authors = freezed,
    Object? published = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      updated: updated == freezed
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      links: links == freezed
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      authors: authors == freezed
          ? _value.authors
          : authors // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      published: published == freezed
          ? _value.published
          : published // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_AppReleaseCopyWith<$Res>
    implements $AppReleaseCopyWith<$Res> {
  factory _$$_AppReleaseCopyWith(
          _$_AppRelease value, $Res Function(_$_AppRelease) then) =
      __$$_AppReleaseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      DateTime? updated,
      List<String?>? links,
      String? title,
      String? content,
      List<String?>? authors,
      String? published});
}

/// @nodoc
class __$$_AppReleaseCopyWithImpl<$Res> extends _$AppReleaseCopyWithImpl<$Res>
    implements _$$_AppReleaseCopyWith<$Res> {
  __$$_AppReleaseCopyWithImpl(
      _$_AppRelease _value, $Res Function(_$_AppRelease) _then)
      : super(_value, (v) => _then(v as _$_AppRelease));

  @override
  _$_AppRelease get _value => super._value as _$_AppRelease;

  @override
  $Res call({
    Object? id = freezed,
    Object? updated = freezed,
    Object? links = freezed,
    Object? title = freezed,
    Object? content = freezed,
    Object? authors = freezed,
    Object? published = freezed,
  }) {
    return _then(_$_AppRelease(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      updated: updated == freezed
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      links: links == freezed
          ? _value._links
          : links // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      authors: authors == freezed
          ? _value._authors
          : authors // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      published: published == freezed
          ? _value.published
          : published // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_AppRelease extends _AppRelease {
  const _$_AppRelease(
      {required this.id,
      required this.updated,
      required final List<String?>? links,
      required this.title,
      required this.content,
      required final List<String?>? authors,
      required this.published})
      : _links = links,
        _authors = authors,
        super._();

  @override
  final String? id;
  @override
  final DateTime? updated;
  final List<String?>? _links;
  @override
  List<String?>? get links {
    final value = _links;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? title;
  @override
  final String? content;
  final List<String?>? _authors;
  @override
  List<String?>? get authors {
    final value = _authors;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? published;

  @override
  String toString() {
    return 'AppRelease(id: $id, updated: $updated, links: $links, title: $title, content: $content, authors: $authors, published: $published)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppRelease &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.updated, updated) &&
            const DeepCollectionEquality().equals(other._links, _links) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.content, content) &&
            const DeepCollectionEquality().equals(other._authors, _authors) &&
            const DeepCollectionEquality().equals(other.published, published));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(updated),
      const DeepCollectionEquality().hash(_links),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(content),
      const DeepCollectionEquality().hash(_authors),
      const DeepCollectionEquality().hash(published));

  @JsonKey(ignore: true)
  @override
  _$$_AppReleaseCopyWith<_$_AppRelease> get copyWith =>
      __$$_AppReleaseCopyWithImpl<_$_AppRelease>(this, _$identity);
}

abstract class _AppRelease extends AppRelease {
  const factory _AppRelease(
      {required final String? id,
      required final DateTime? updated,
      required final List<String?>? links,
      required final String? title,
      required final String? content,
      required final List<String?>? authors,
      required final String? published}) = _$_AppRelease;
  const _AppRelease._() : super._();

  @override
  String? get id;
  @override
  DateTime? get updated;
  @override
  List<String?>? get links;
  @override
  String? get title;
  @override
  String? get content;
  @override
  List<String?>? get authors;
  @override
  String? get published;
  @override
  @JsonKey(ignore: true)
  _$$_AppReleaseCopyWith<_$_AppRelease> get copyWith =>
      throw _privateConstructorUsedError;
}
