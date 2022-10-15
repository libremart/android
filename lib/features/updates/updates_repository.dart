import 'package:flutter_riverpod/flutter_riverpod.dart';

final updatesRepositoryProvider = Provider<UpdatesRepository>((ref) {
  //final dio = ref.watch(dioProvider);
  return LibreMartUpdatesRepository(ref);
});

abstract class UpdatesRepository {
  // todo: abstract functions
}

class LibreMartUpdatesRepository implements UpdatesRepository {
  LibreMartUpdatesRepository(this.ref);
  final Ref ref;

  // todo: implement abstract functions
}
