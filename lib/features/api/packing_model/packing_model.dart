import 'package:freezed_annotation/freezed_annotation.dart';
part 'packing_model.freezed.dart';
part 'packing_model.g.dart';

@freezed
class PackingModel with _$PackingModel {
  const PackingModel._();

  const factory PackingModel({
    required String? name,
    required String? url,
  }) = _PackingModel;

  factory PackingModel.fromJson(Map<String, dynamic> json) =>
      _$PackingModelFromJson(json);
}
