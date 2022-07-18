// part 'browse_model.freezed.dart';
// part 'browse_model.g.dart';

// @freezed
// class Browse with _$Browse {
//   const Browse._();

//   const factory Browse({
//     String? browseId,
//     required String browseName,
//   }) = _Browse;

//   factory Browse.empty() => const Browse(browseName: '');

//   factory Browse.fromJson(Map<String, dynamic> json) =>
//       _$BrowseFromJson(json);

//   factory Browse.fromDocument(DocumentSnapshot doc) {
//     final data = doc.data()! as Map<String, dynamic>;
//     return Browse.fromJson(data).copyWith(communityId: doc.id);
//   }

//   Map<String, dynamic> toDocument() => toJson()..remove('id');

// }
