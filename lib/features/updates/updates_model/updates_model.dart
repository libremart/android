// part 'updates_model.freezed.dart';
// part 'updates_model.g.dart';

// @freezed
// class Updates with _$Updates {
//   const Updates._();

//   const factory Updates({
//     String? updatesId,
//     required String updatesName,
//   }) = _Updates;

//   factory Updates.empty() => const Updates(updatesName: '');

//   factory Updates.fromJson(Map<String, dynamic> json) =>
//       _$UpdatesFromJson(json);

//   factory Updates.fromDocument(DocumentSnapshot doc) {
//     final data = doc.data()! as Map<String, dynamic>;
//     return Updates.fromJson(data).copyWith(communityId: doc.id);
//   }

//   Map<String, dynamic> toDocument() => toJson()..remove('id');
// }
