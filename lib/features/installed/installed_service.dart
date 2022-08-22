//todo: not a must, but if you need, a service is a middleware between controller and repository

import 'package:flutter_riverpod/flutter_riverpod.dart';

final installedServiceProvider = Provider.autoDispose<InstalledService>((ref) {
  return LibreMartInstalledService(ref);
});

abstract class InstalledService {
  // todo: abstract functions
}

class LibreMartInstalledService implements InstalledService {
  LibreMartInstalledService(
    this.ref,
  );
  final AutoDisposeRef ref;

  // todo: implement abstract functions

}
