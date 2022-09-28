// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'api_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ApiState {
  AsyncValue<List<Packing>> get allPackings =>
      throw _privateConstructorUsedError;
  int get selectedPacking => throw _privateConstructorUsedError;
  AsyncValue<List<Product>> get allProducts =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ApiStateCopyWith<ApiState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiStateCopyWith<$Res> {
  factory $ApiStateCopyWith(ApiState value, $Res Function(ApiState) then) =
      _$ApiStateCopyWithImpl<$Res>;
  $Res call(
      {AsyncValue<List<Packing>> allPackings,
      int selectedPacking,
      AsyncValue<List<Product>> allProducts});
}

/// @nodoc
class _$ApiStateCopyWithImpl<$Res> implements $ApiStateCopyWith<$Res> {
  _$ApiStateCopyWithImpl(this._value, this._then);

  final ApiState _value;
  // ignore: unused_field
  final $Res Function(ApiState) _then;

  @override
  $Res call({
    Object? allPackings = freezed,
    Object? selectedPacking = freezed,
    Object? allProducts = freezed,
  }) {
    return _then(_value.copyWith(
      allPackings: allPackings == freezed
          ? _value.allPackings
          : allPackings // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<Packing>>,
      selectedPacking: selectedPacking == freezed
          ? _value.selectedPacking
          : selectedPacking // ignore: cast_nullable_to_non_nullable
              as int,
      allProducts: allProducts == freezed
          ? _value.allProducts
          : allProducts // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<Product>>,
    ));
  }
}

/// @nodoc
abstract class _$$_ApiStateCopyWith<$Res> implements $ApiStateCopyWith<$Res> {
  factory _$$_ApiStateCopyWith(
          _$_ApiState value, $Res Function(_$_ApiState) then) =
      __$$_ApiStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {AsyncValue<List<Packing>> allPackings,
      int selectedPacking,
      AsyncValue<List<Product>> allProducts});
}

/// @nodoc
class __$$_ApiStateCopyWithImpl<$Res> extends _$ApiStateCopyWithImpl<$Res>
    implements _$$_ApiStateCopyWith<$Res> {
  __$$_ApiStateCopyWithImpl(
      _$_ApiState _value, $Res Function(_$_ApiState) _then)
      : super(_value, (v) => _then(v as _$_ApiState));

  @override
  _$_ApiState get _value => super._value as _$_ApiState;

  @override
  $Res call({
    Object? allPackings = freezed,
    Object? selectedPacking = freezed,
    Object? allProducts = freezed,
  }) {
    return _then(_$_ApiState(
      allPackings: allPackings == freezed
          ? _value.allPackings
          : allPackings // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<Packing>>,
      selectedPacking: selectedPacking == freezed
          ? _value.selectedPacking
          : selectedPacking // ignore: cast_nullable_to_non_nullable
              as int,
      allProducts: allProducts == freezed
          ? _value.allProducts
          : allProducts // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<Product>>,
    ));
  }
}

/// @nodoc

class _$_ApiState extends _ApiState {
  const _$_ApiState(
      {required this.allPackings,
      required this.selectedPacking,
      required this.allProducts})
      : super._();

  @override
  final AsyncValue<List<Packing>> allPackings;
  @override
  final int selectedPacking;
  @override
  final AsyncValue<List<Product>> allProducts;

  @override
  String toString() {
    return 'ApiState(allPackings: $allPackings, selectedPacking: $selectedPacking, allProducts: $allProducts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApiState &&
            const DeepCollectionEquality()
                .equals(other.allPackings, allPackings) &&
            const DeepCollectionEquality()
                .equals(other.selectedPacking, selectedPacking) &&
            const DeepCollectionEquality()
                .equals(other.allProducts, allProducts));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(allPackings),
      const DeepCollectionEquality().hash(selectedPacking),
      const DeepCollectionEquality().hash(allProducts));

  @JsonKey(ignore: true)
  @override
  _$$_ApiStateCopyWith<_$_ApiState> get copyWith =>
      __$$_ApiStateCopyWithImpl<_$_ApiState>(this, _$identity);
}

abstract class _ApiState extends ApiState {
  const factory _ApiState(
      {required final AsyncValue<List<Packing>> allPackings,
      required final int selectedPacking,
      required final AsyncValue<List<Product>> allProducts}) = _$_ApiState;
  const _ApiState._() : super._();

  @override
  AsyncValue<List<Packing>> get allPackings;
  @override
  int get selectedPacking;
  @override
  AsyncValue<List<Product>> get allProducts;
  @override
  @JsonKey(ignore: true)
  _$$_ApiStateCopyWith<_$_ApiState> get copyWith =>
      throw _privateConstructorUsedError;
}
