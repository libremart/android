import 'package:libremart/features/browse/browse_service.dart';
import 'package:libremart/features/browse/browse_state/browse_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final browseControllerProvider =
    StateNotifierProvider.autoDispose<BrowseController, BrowseState>((ref) {
  return BrowseController(
    const BrowseState(appReleases: AsyncValue.data([])),
    ref.watch(browseServiceProvider),
  );
});

class BrowseController extends StateNotifier<BrowseState> {
  BrowseController(
    BrowseState state,
    this._browseService,
  ) : super(state) {
    getAppReleases();
  }

  final BrowseService _browseService;

  getAppReleases() async {
    state = state.copyWith(appReleases: const AsyncValue.loading());
    final rel = await _browseService.getAppReleases();
    state = state.copyWith(appReleases: AsyncValue.data(rel));
  }
  //todo: put your functions here
}
