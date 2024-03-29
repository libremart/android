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

Packing _$PackingFromJson(Map<String, dynamic> json) {
  return _Packing.fromJson(json);
}

/// @nodoc
mixin _$Packing {
  String? get name => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PackingCopyWith<Packing> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackingCopyWith<$Res> {
  factory $PackingCopyWith(Packing value, $Res Function(Packing) then) =
      _$PackingCopyWithImpl<$Res>;
  $Res call({String? name, String? url});
}

/// @nodoc
class _$PackingCopyWithImpl<$Res> implements $PackingCopyWith<$Res> {
  _$PackingCopyWithImpl(this._value, this._then);

  final Packing _value;
  // ignore: unused_field
  final $Res Function(Packing) _then;

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
abstract class _$$_PackingCopyWith<$Res> implements $PackingCopyWith<$Res> {
  factory _$$_PackingCopyWith(
          _$_Packing value, $Res Function(_$_Packing) then) =
      __$$_PackingCopyWithImpl<$Res>;
  @override
  $Res call({String? name, String? url});
}

/// @nodoc
class __$$_PackingCopyWithImpl<$Res> extends _$PackingCopyWithImpl<$Res>
    implements _$$_PackingCopyWith<$Res> {
  __$$_PackingCopyWithImpl(_$_Packing _value, $Res Function(_$_Packing) _then)
      : super(_value, (v) => _then(v as _$_Packing));

  @override
  _$_Packing get _value => super._value as _$_Packing;

  @override
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
  }) {
    return _then(_$_Packing(
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
class _$_Packing extends _Packing {
  const _$_Packing({required this.name, required this.url}) : super._();

  factory _$_Packing.fromJson(Map<String, dynamic> json) =>
      _$$_PackingFromJson(json);

  @override
  final String? name;
  @override
  final String? url;

  @override
  String toString() {
    return 'Packing(name: $name, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Packing &&
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
  _$$_PackingCopyWith<_$_Packing> get copyWith =>
      __$$_PackingCopyWithImpl<_$_Packing>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PackingToJson(
      this,
    );
  }
}

abstract class _Packing extends Packing {
  const factory _Packing(
      {required final String? name, required final String? url}) = _$_Packing;
  const _Packing._() : super._();

  factory _Packing.fromJson(Map<String, dynamic> json) = _$_Packing.fromJson;

  @override
  String? get name;
  @override
  String? get url;
  @override
  @JsonKey(ignore: true)
  _$$_PackingCopyWith<_$_Packing> get copyWith =>
      throw _privateConstructorUsedError;
}
