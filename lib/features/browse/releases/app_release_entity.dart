import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:webfeed_plus/webfeed_plus.dart';
part 'app_release_entity.freezed.dart';
// part 'app_release_entity.g.dart';

@freezed
class AppReleaseEntity with _$AppReleaseEntity {
  const AppReleaseEntity._();

  const factory AppReleaseEntity({
    required String? id,
    required DateTime? updated,
    required List<AtomLink>? links,
    required String? title,
    required String? content,
    required List<AtomPerson>? authors,
    required String? published,
  }) = _AppReleaseEntity;

  // factory AppReleaseEntity.empty() => const AppReleaseEntity(id: '');

  factory AppReleaseEntity.fromAtom(AtomItem atomItem) {
    return AppReleaseEntity(
      id: atomItem.id,
      updated: atomItem.updated,
      links: atomItem.links,
      title: atomItem.title,
      content: atomItem.content,
      authors: atomItem.authors,
      published: atomItem.published,
    );
  }

  // factory AppReleaseEntity.fromDocument(DocumentSnapshot doc) {
  //   final data = doc.data()! as Map<String, dynamic>;
  //   return AppReleaseEntity.fromJson(data).copyWith(communityId: doc.id);
  // }

}
