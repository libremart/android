import 'package:libremart/features/api/github_item_model/github_item_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:libremart/features/api/packing_model/packing_model.dart';
part 'api_state.freezed.dart';

@freezed
class ApiState with _$ApiState {
  const ApiState._();

  const factory ApiState({
    AsyncValue<List<PackingModel>>? allPackings,
    int? selectedPacking,
    AsyncValue<List<GithubItem>>? allProducts,
  }) = _ApiState;
}
