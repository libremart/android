import 'package:bazaar/features/browse/browse_model/app_release_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'browse_state.freezed.dart';

@freezed
class BrowseState with _$BrowseState {
  const BrowseState._();

  const factory BrowseState({
    required AsyncValue<List<AppRelease>> appReleases,
  }) = _BrowseState;
}
