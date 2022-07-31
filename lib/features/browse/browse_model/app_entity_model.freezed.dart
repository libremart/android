// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_entity_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppEntity _$AppEntityFromJson(Map<String, dynamic> json) {
  return _AppEntity.fromJson(json);
}

/// @nodoc
mixin _$AppEntity {
  String? get appEntityId => throw _privateConstructorUsedError;
  String get appEntityName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppEntityCopyWith<AppEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppEntityCopyWith<$Res> {
  factory $AppEntityCopyWith(AppEntity value, $Res Function(AppEntity) then) =
      _$AppEntityCopyWithImpl<$Res>;
  $Res call({String? appEntityId, String appEntityName});
}

/// @nodoc
class _$AppEntityCopyWithImpl<$Res> implements $AppEntityCopyWith<$Res> {
  _$AppEntityCopyWithImpl(this._value, this._then);

  final AppEntity _value;
  // ignore: unused_field
  final $Res Function(AppEntity) _then;

  @override
  $Res call({
    Object? appEntityId = freezed,
    Object? appEntityName = freezed,
  }) {
    return _then(_value.copyWith(
      appEntityId: appEntityId == freezed
          ? _value.appEntityId
          : appEntityId // ignore: cast_nullable_to_non_nullable
              as String?,
      appEntityName: appEntityName == freezed
          ? _value.appEntityName
          : appEntityName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_AppEntityCopyWith<$Res> implements $AppEntityCopyWith<$Res> {
  factory _$$_AppEntityCopyWith(
          _$_AppEntity value, $Res Function(_$_AppEntity) then) =
      __$$_AppEntityCopyWithImpl<$Res>;
  @override
  $Res call({String? appEntityId, String appEntityName});
}

/// @nodoc
class __$$_AppEntityCopyWithImpl<$Res> extends _$AppEntityCopyWithImpl<$Res>
    implements _$$_AppEntityCopyWith<$Res> {
  __$$_AppEntityCopyWithImpl(
      _$_AppEntity _value, $Res Function(_$_AppEntity) _then)
      : super(_value, (v) => _then(v as _$_AppEntity));

  @override
  _$_AppEntity get _value => super._value as _$_AppEntity;

  @override
  $Res call({
    Object? appEntityId = freezed,
    Object? appEntityName = freezed,
  }) {
    return _then(_$_AppEntity(
      appEntityId: appEntityId == freezed
          ? _value.appEntityId
          : appEntityId // ignore: cast_nullable_to_non_nullable
              as String?,
      appEntityName: appEntityName == freezed
          ? _value.appEntityName
          : appEntityName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AppEntity extends _AppEntity {
  const _$_AppEntity({this.appEntityId, required this.appEntityName})
      : super._();

  factory _$_AppEntity.fromJson(Map<String, dynamic> json) =>
      _$$_AppEntityFromJson(json);

  @override
  final String? appEntityId;
  @override
  final String appEntityName;

  @override
  String toString() {
    return 'AppEntity(appEntityId: $appEntityId, appEntityName: $appEntityName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppEntity &&
            const DeepCollectionEquality()
                .equals(other.appEntityId, appEntityId) &&
            const DeepCollectionEquality()
                .equals(other.appEntityName, appEntityName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(appEntityId),
      const DeepCollectionEquality().hash(appEntityName));

  @JsonKey(ignore: true)
  @override
  _$$_AppEntityCopyWith<_$_AppEntity> get copyWith =>
      __$$_AppEntityCopyWithImpl<_$_AppEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppEntityToJson(
      this,
    );
  }
}

abstract class _AppEntity extends AppEntity {
  const factory _AppEntity(
      {final String? appEntityId,
      required final String appEntityName}) = _$_AppEntity;
  const _AppEntity._() : super._();

  factory _AppEntity.fromJson(Map<String, dynamic> json) =
      _$_AppEntity.fromJson;

  @override
  String? get appEntityId;
  @override
  String get appEntityName;
  @override
  @JsonKey(ignore: true)
  _$$_AppEntityCopyWith<_$_AppEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
