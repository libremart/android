import 'package:libremart/features/api/api_service.dart';
import 'package:libremart/features/api/api_state/api_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final apiControllerProvider =
    StateNotifierProvider.autoDispose<ApiController, ApiState>((ref) {
  return ApiController(
    const ApiState(allProducts: AsyncValue.data([])),
    ref,
  );
});

class ApiController extends StateNotifier<ApiState> {
  ApiController(
    ApiState state,
    this.ref,
  ) : super(state) {
    getAppReleases();
  }

  final Ref ref;

  getAppReleases() async {
    state = state.copyWith(allProducts: const AsyncValue.loading());
    final products = ref.read(apiServiceProvider).x;
    // final rel = await ref.readapiService.getAppReleases();
    // state = state.copyWith(allProducts: AsyncValue.data(rel));
  }
}
