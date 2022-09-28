import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:libremart/features/api/packing_model/packing_model.dart';
import 'package:libremart/features/api/product_model/product_model.dart';
part 'api_state.freezed.dart';

@freezed
class ApiState with _$ApiState {
  const ApiState._();

  const factory ApiState({
    required AsyncValue<List<Packing>> allPackings,
    required int selectedPacking,
    required AsyncValue<List<Product>> allProducts,
  }) = _ApiState;

  factory ApiState.initial() {
    return const ApiState(
      allPackings: AsyncValue.data([]),
      selectedPacking: 0,
      allProducts: AsyncValue.data([]),
    );
  }
}
