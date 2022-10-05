//
//     final githubItemModel = githubItemModelFromMap(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
part 'github_item_model.freezed.dart';
part 'github_item_model.g.dart';

@freezed
class GithubItem with _$GithubItem {
  const factory GithubItem({
    required String? name,
    required String? path,
    required String? sha,
    required int? size,
    required String? url,
    required String? html_url,
    required String? git_url,
    required String? download_url,
    required String? type,
    required Links? links,
  }) = _GithubItem;

  factory GithubItem.fromDocument(dynamic jsonObject) {
    final data = jsonObject as Map<String, dynamic>;
    return GithubItem.fromJson(data);
  }

  factory GithubItem.fromJson(Map<String, dynamic> json) =>
      _$GithubItemFromJson(json);
}

@freezed
class Links with _$Links {
  const factory Links({
    required String? self,
    required String? git,
    required String? html,
  }) = _Links;

  factory Links.fromJson(Map<String, dynamic> json) => _$LinksFromJson(json);
}
