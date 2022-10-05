import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:libremart/features/api/domain/packing_model/packing_model.dart';
import 'package:libremart/features/api/domain/product_model/product_model.dart';

part 'api_state.freezed.dart';

@freezed
class ApiState with _$ApiState {
  const ApiState._();

  const factory ApiState({
    required AsyncValue<List<Packing>> allPackings,
    required Product selectedProduct,
    required AsyncValue<List<Product>> allProducts,
  }) = _ApiState;

  factory ApiState.initial() {
    return ApiState(
      allPackings: const AsyncValue.data([]),
      selectedProduct: Product.initial(),
      allProducts: const AsyncValue.data([]),
    );
  }
}
