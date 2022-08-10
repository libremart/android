import 'package:freezed_annotation/freezed_annotation.dart';
part 'app_release_entity.freezed.dart';
part 'app_release_entity.g.dart';

@freezed
class AppReleaseEntity with _$AppReleaseEntity {
  const AppReleaseEntity._();

  const factory AppReleaseEntity({
    required String id,
    required String updated,
    required String link,
    required String title,
    required String content,
    required String author,
    required String thumbnail,
  }) = _AppReleaseEntity;

  // factory AppReleaseEntity.empty() => const AppReleaseEntity(id: '');

  factory AppReleaseEntity.fromJson(Map<String, dynamic> json) =>
      _$AppReleaseEntityFromJson(json);

  // factory AppReleaseEntity.fromDocument(DocumentSnapshot doc) {
  //   final data = doc.data()! as Map<String, dynamic>;
  //   return AppReleaseEntity.fromJson(data).copyWith(communityId: doc.id);
  // }

  Map<String, dynamic> toDocument() => toJson()..remove('id');
}
