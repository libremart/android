import 'package:libremart/features/api/github_item_model/github_item_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'api_state.freezed.dart';

@freezed
class ApiState with _$ApiState {
  const ApiState._();

  const factory ApiState({
    AsyncValue<List<GithubItemModel>>? allProducts,
  }) = _ApiState;
}
