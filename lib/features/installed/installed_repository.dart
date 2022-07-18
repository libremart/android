import 'package:flutter_riverpod/flutter_riverpod.dart';


final installedRepositoryProvider = Provider<InstalledRepository>((ref) {
  //final dio = ref.watch(dioProvider);
  return BazaarInstalledRepository(read: ref.read);
});

abstract class InstalledRepository {
  // todo: abstract functions
}

class BazaarInstalledRepository implements InstalledRepository {
  BazaarInstalledRepository({required this.read});
  final Reader read;

  // todo: implement abstract functions
}
