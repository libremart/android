import 'package:flutter_riverpod/flutter_riverpod.dart';

final updatesRepositoryProvider = Provider<UpdatesRepository>((ref) {
  //final dio = ref.watch(dioProvider);
  return LibreMartUpdatesRepository(read: ref.read);
});

abstract class UpdatesRepository {
  // todo: abstract functions
}

class LibreMartUpdatesRepository implements UpdatesRepository {
  LibreMartUpdatesRepository({required this.read});
  final Reader read;

  // todo: implement abstract functions
}
