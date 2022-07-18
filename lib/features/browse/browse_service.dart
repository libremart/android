//todo: not a must, but if you need, a service is a middleware between controller and repository

import 'package:flutter_riverpod/flutter_riverpod.dart';

final browseServiceProvider = Provider.autoDispose<BrowseService>((ref) {
  return BazaarBrowseService(ref);
});

abstract class BrowseService {
  // todo: abstract functions
}

class BazaarBrowseService implements BrowseService {
  BazaarBrowseService(
    this.ref,
  );
  final AutoDisposeRef ref;

  // todo: implement abstract functions

}
