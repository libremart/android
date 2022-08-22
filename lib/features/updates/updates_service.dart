//todo: not a must, but if you need, a service is a middleware between controller and repository

import 'package:flutter_riverpod/flutter_riverpod.dart';

final updatesServiceProvider = Provider.autoDispose<UpdatesService>((ref) {
  return LibreMartUpdatesService(ref);
});

abstract class UpdatesService {
  // todo: abstract functions
}

class LibreMartUpdatesService implements UpdatesService {
  LibreMartUpdatesService(
    this.ref,
  );
  final AutoDisposeRef ref;

  // todo: implement abstract functions

}
