import 'package:freezed_annotation/freezed_annotation.dart';
part 'app_entity_model.freezed.dart';
part 'app_entity_model.g.dart';

@freezed
class AppEntity with _$AppEntity {
  const AppEntity._();

  const factory AppEntity({
    String? appEntityId,
    required String appEntityName,
  }) = _AppEntity;

  factory AppEntity.empty() => const AppEntity(appEntityName: '');

  factory AppEntity.fromJson(Map<String, dynamic> json) =>
      _$AppEntityFromJson(json);

  // factory AppEntity.fromDocument(DocumentSnapshot doc) {
  //   final data = doc.data()! as Map<String, dynamic>;
  //   return AppEntity.fromJson(data).copyWith(communityId: doc.id);
  // }

  Map<String, dynamic> toDocument() => toJson()..remove('id');
}
