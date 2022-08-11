import 'package:bazaar/features/browse/releases/app_release_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'app_release_model.freezed.dart';

@freezed
class AppRelease with _$AppRelease {
  const AppRelease._();

  const factory AppRelease({
    required String? id,
    required DateTime? updated,
    required List<String?>? links,
    required String? title,
    required String? content,
    required List<String?>? authors,
    required String? published,
  }) = _AppRelease;

  AppRelease.initial() {
    id:
    '';
    updated:
    DateTime.now();
    links:
    [];
    title:
    '';
    content:
    '';
    authors:
    [];
    published:
    '';
  }
  factory AppRelease.fromEntity(AppReleaseEntity entity) {
    final List<String?> stringLinks = [];
    entity.links!.map((e) => stringLinks.add(e.href));

    final List<String?> stringAuthors = [];
    entity.authors!.map((e) => stringAuthors.add(e.name));

    return AppRelease(
      id: entity.id,
      updated: entity.updated,
      links: stringLinks,
      title: entity.title,
      content: entity.content,
      authors: stringAuthors,
      published: entity.published,
    );
  }
}
