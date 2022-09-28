import 'package:libremart/features/api/api_service.dart';
import 'package:libremart/features/api/api_state/api_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:libremart/features/api/packing_model/packing_model.dart';
import 'package:libremart/features/api/product_model/product_model.dart';

final apiControllerProvider =
    StateNotifierProvider.autoDispose<ApiController, ApiState>((ref) {
  return ApiController(
    ApiState.initial(),
    ref,
  );
});

class ApiController extends StateNotifier<ApiState> {
  ApiController(
    ApiState state,
    this.ref,
  ) : super(state) {
    getAllProducts();
  }

  final Ref ref;

  void getAllProducts() async {
    state = state.copyWith(allProducts: const AsyncValue.loading());

    await addPackings();
    final packingList = state.allPackings.value!;
    final List<Product> products = await ref
        .read(apiServiceProvider)
        .fromPackingsToProducts(packingList: packingList);
    state = state.copyWith(allProducts: AsyncValue.data(products));
  }

  Future<void> addPackings() async {
    state = state.copyWith(allPackings: const AsyncValue.loading());
    final List<Packing> packings =
        await ref.read(apiServiceProvider).fromGitItemsToPackings();
    state = state.copyWith(allPackings: AsyncValue.data(packings));
  }

  void selectIndexForPacking({required int selectedIndex}) {
    state = state.copyWith(selectedPacking: selectedIndex);
  }
}
