// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'browse_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BrowseState {
  AsyncValue<List<AppRelease>> get appReleases =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BrowseStateCopyWith<BrowseState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrowseStateCopyWith<$Res> {
  factory $BrowseStateCopyWith(
          BrowseState value, $Res Function(BrowseState) then) =
      _$BrowseStateCopyWithImpl<$Res>;
  $Res call({AsyncValue<List<AppRelease>> appReleases});
}

/// @nodoc
class _$BrowseStateCopyWithImpl<$Res> implements $BrowseStateCopyWith<$Res> {
  _$BrowseStateCopyWithImpl(this._value, this._then);

  final BrowseState _value;
  // ignore: unused_field
  final $Res Function(BrowseState) _then;

  @override
  $Res call({
    Object? appReleases = freezed,
  }) {
    return _then(_value.copyWith(
      appReleases: appReleases == freezed
          ? _value.appReleases
          : appReleases // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<AppRelease>>,
    ));
  }
}

/// @nodoc
abstract class _$$_BrowseStateCopyWith<$Res>
    implements $BrowseStateCopyWith<$Res> {
  factory _$$_BrowseStateCopyWith(
          _$_BrowseState value, $Res Function(_$_BrowseState) then) =
      __$$_BrowseStateCopyWithImpl<$Res>;
  @override
  $Res call({AsyncValue<List<AppRelease>> appReleases});
}

/// @nodoc
class __$$_BrowseStateCopyWithImpl<$Res> extends _$BrowseStateCopyWithImpl<$Res>
    implements _$$_BrowseStateCopyWith<$Res> {
  __$$_BrowseStateCopyWithImpl(
      _$_BrowseState _value, $Res Function(_$_BrowseState) _then)
      : super(_value, (v) => _then(v as _$_BrowseState));

  @override
  _$_BrowseState get _value => super._value as _$_BrowseState;

  @override
  $Res call({
    Object? appReleases = freezed,
  }) {
    return _then(_$_BrowseState(
      appReleases: appReleases == freezed
          ? _value.appReleases
          : appReleases // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<AppRelease>>,
    ));
  }
}

/// @nodoc

class _$_BrowseState extends _BrowseState {
  const _$_BrowseState({required this.appReleases}) : super._();

  @override
  final AsyncValue<List<AppRelease>> appReleases;

  @override
  String toString() {
    return 'BrowseState(appReleases: $appReleases)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BrowseState &&
            const DeepCollectionEquality()
                .equals(other.appReleases, appReleases));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(appReleases));

  @JsonKey(ignore: true)
  @override
  _$$_BrowseStateCopyWith<_$_BrowseState> get copyWith =>
      __$$_BrowseStateCopyWithImpl<_$_BrowseState>(this, _$identity);
}

abstract class _BrowseState extends BrowseState {
  const factory _BrowseState(
          {required final AsyncValue<List<AppRelease>> appReleases}) =
      _$_BrowseState;
  const _BrowseState._() : super._();

  @override
  AsyncValue<List<AppRelease>> get appReleases;
  @override
  @JsonKey(ignore: true)
  _$$_BrowseStateCopyWith<_$_BrowseState> get copyWith =>
      throw _privateConstructorUsedError;
}
