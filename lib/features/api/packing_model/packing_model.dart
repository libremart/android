import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:libremart/features/api/github_item_model/github_item_model.dart';
part 'packing_model.freezed.dart';
part 'packing_model.g.dart';

@freezed
class Packing with _$Packing {
  const Packing._();

  const factory Packing({
    required String? name,
    required String? url,
  }) = _Packing;

  factory Packing.fromGithubItem(GithubItem githubItem) {
    print('WTF!!!! ${githubItem.download_url}');
    return Packing(name: githubItem.name, url: githubItem.download_url);
  }

  factory Packing.fromJson(Map<String, dynamic> json) =>
      _$PackingFromJson(json);
}
