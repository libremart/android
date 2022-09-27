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
    getAllPackagings();
  }

  final Ref ref;

  getAllPackagings() async {
    state = state.copyWith(allPackings: const AsyncValue.loading());
    final packagings =
        await ref.read(apiServiceProvider).fromGitItemsToPackings();
    state = state.copyWith(allPackings: AsyncValue.data(packagings));
  }

  void selectIndexForPacking({required int selectedIndex}) {
    state = state.copyWith(selectedPacking: selectedIndex);
  }
}
