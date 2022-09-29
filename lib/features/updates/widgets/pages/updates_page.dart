import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:libremart/features/api/api_controller.dart';
import 'package:flutter/material.dart';
import 'package:libremart/theme/typography/display/display_small_atom.dart';

class UpdatesPage extends ConsumerWidget {
  const UpdatesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
      // child: DisplaySmall(data: 'All your applications are up to date'),

      child: ref.watch(apiControllerProvider).allProducts.when(
                data: (products) => DisplaySmall(data: products.toString()),
                error: (e, s) => const Text('now error'),
                loading: () => const Text('now loading'),
              ) ??
          const Text('is Null'),
    );
    // TODO: replicate browse page here and put a filter to show installed apps only.
  }
}
