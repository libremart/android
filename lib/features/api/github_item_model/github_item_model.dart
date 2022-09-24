//
//     final githubItemModel = githubItemModelFromMap(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
part 'github_item_model.freezed.dart';
part 'github_item_model.g.dart';

@freezed
abstract class GithubItemModel with _$GithubItemModel {
  const factory GithubItemModel({
    required String? name,
    required String? path,
    required String? sha,
    required int? size,
    required String? url,
    required String? htmlUrl,
    required String? gitUrl,
    required String? downloadUrl,
    required String? type,
    required Links? links,
  }) = _GithubItemModel;

  factory GithubItemModel.fromJson(Map<String, dynamic> json) =>
      _$GithubItemModelFromJson(json);
}

@freezed
abstract class Links with _$Links {
  const factory Links({
    required String? self,
    required String? git,
    required String? html,
  }) = _Links;

  factory Links.fromJson(Map<String, dynamic> json) => _$LinksFromJson(json);
}
