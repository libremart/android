// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'packing_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PackingModel _$PackingModelFromJson(Map<String, dynamic> json) {
  return _PackingModel.fromJson(json);
}

/// @nodoc
mixin _$PackingModel {
  String? get name => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PackingModelCopyWith<PackingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackingModelCopyWith<$Res> {
  factory $PackingModelCopyWith(
          PackingModel value, $Res Function(PackingModel) then) =
      _$PackingModelCopyWithImpl<$Res>;
  $Res call({String? name, String? url});
}

/// @nodoc
class _$PackingModelCopyWithImpl<$Res> implements $PackingModelCopyWith<$Res> {
  _$PackingModelCopyWithImpl(this._value, this._then);

  final PackingModel _value;
  // ignore: unused_field
  final $Res Function(PackingModel) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_PackingModelCopyWith<$Res>
    implements $PackingModelCopyWith<$Res> {
  factory _$$_PackingModelCopyWith(
          _$_PackingModel value, $Res Function(_$_PackingModel) then) =
      __$$_PackingModelCopyWithImpl<$Res>;
  @override
  $Res call({String? name, String? url});
}

/// @nodoc
class __$$_PackingModelCopyWithImpl<$Res>
    extends _$PackingModelCopyWithImpl<$Res>
    implements _$$_PackingModelCopyWith<$Res> {
  __$$_PackingModelCopyWithImpl(
      _$_PackingModel _value, $Res Function(_$_PackingModel) _then)
      : super(_value, (v) => _then(v as _$_PackingModel));

  @override
  _$_PackingModel get _value => super._value as _$_PackingModel;

  @override
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
  }) {
    return _then(_$_PackingModel(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PackingModel extends _PackingModel {
  const _$_PackingModel({required this.name, required this.url}) : super._();

  factory _$_PackingModel.fromJson(Map<String, dynamic> json) =>
      _$$_PackingModelFromJson(json);

  @override
  final String? name;
  @override
  final String? url;

  @override
  String toString() {
    return 'PackingModel(name: $name, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PackingModel &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.url, url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(url));

  @JsonKey(ignore: true)
  @override
  _$$_PackingModelCopyWith<_$_PackingModel> get copyWith =>
      __$$_PackingModelCopyWithImpl<_$_PackingModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PackingModelToJson(
      this,
    );
  }
}

abstract class _PackingModel extends PackingModel {
  const factory _PackingModel(
      {required final String? name,
      required final String? url}) = _$_PackingModel;
  const _PackingModel._() : super._();

  factory _PackingModel.fromJson(Map<String, dynamic> json) =
      _$_PackingModel.fromJson;

  @override
  String? get name;
  @override
  String? get url;
  @override
  @JsonKey(ignore: true)
  _$$_PackingModelCopyWith<_$_PackingModel> get copyWith =>
      throw _privateConstructorUsedError;
}
