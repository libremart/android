import 'package:flutter_riverpod/flutter_riverpod.dart';


final updatesRepositoryProvider = Provider<UpdatesRepository>((ref) {
  //final dio = ref.watch(dioProvider);
  return BazaarUpdatesRepository(read: ref.read);
});

abstract class UpdatesRepository {
  // todo: abstract functions
}

class BazaarUpdatesRepository implements UpdatesRepository {
  BazaarUpdatesRepository({required this.read});
  final Reader read;

  // todo: implement abstract functions
}
