// part 'installed_model.freezed.dart';
// part 'installed_model.g.dart';

// @freezed
// class Installed with _$Installed {
//   const Installed._();

//   const factory Installed({
//     String? installedId,
//     required String installedName,
//   }) = _Installed;

//   factory Installed.empty() => const Installed(installedName: '');

//   factory Installed.fromJson(Map<String, dynamic> json) =>
//       _$InstalledFromJson(json);

//   factory Installed.fromDocument(DocumentSnapshot doc) {
//     final data = doc.data()! as Map<String, dynamic>;
//     return Installed.fromJson(data).copyWith(communityId: doc.id);
//   }

//   Map<String, dynamic> toDocument() => toJson()..remove('id');

// }
