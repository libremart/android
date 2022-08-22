import 'package:flutter_riverpod/flutter_riverpod.dart';

final installedRepositoryProvider = Provider<InstalledRepository>((ref) {
  //final dio = ref.watch(dioProvider);
  return LibreMartInstalledRepository(read: ref.read);
});

abstract class InstalledRepository {
  // todo: abstract functions
}

class LibreMartInstalledRepository implements InstalledRepository {
  LibreMartInstalledRepository({required this.read});
  final Reader read;

  // todo: implement abstract functions
}
