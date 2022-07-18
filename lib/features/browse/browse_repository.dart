import 'package:flutter_riverpod/flutter_riverpod.dart';


final browseRepositoryProvider = Provider<BrowseRepository>((ref) {
  //final dio = ref.watch(dioProvider);
  return BazaarBrowseRepository(read: ref.read);
});

abstract class BrowseRepository {
  // todo: abstract functions
}

class BazaarBrowseRepository implements BrowseRepository {
  BazaarBrowseRepository({required this.read});
  final Reader read;

  // todo: implement abstract functions
}
