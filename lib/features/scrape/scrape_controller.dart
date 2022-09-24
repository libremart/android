import 'package:libremart/features/scrape/scrape_service.dart';
import 'package:libremart/features/browse/browse_state/browse_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final browseControllerProvider =
    StateNotifierProvider.autoDispose<ScrapeController, BrowseState>((ref) {
  return ScrapeController(
    const BrowseState(appReleases: AsyncValue.data([])),
    ref.watch(scrapeServiceProvider),
  );
});

class ScrapeController extends StateNotifier<BrowseState> {
  ScrapeController(
    BrowseState state,
    this._scrapeService,
  ) : super(state) {
    getAppReleases();
  }

  final ScrapeService _scrapeService;

  getAppReleases() async {
    state = state.copyWith(appReleases: const AsyncValue.loading());
    final rel = await _scrapeService.getAppReleases();
    state = state.copyWith(appReleases: AsyncValue.data(rel));
  }
  //todo: put your functions here
}
