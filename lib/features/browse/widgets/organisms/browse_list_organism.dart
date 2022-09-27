import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:libremart/features/api/api_controller.dart';
import 'package:libremart/features/browse/widgets/molecules/browse_list_error_molecule.dart';
import 'package:libremart/features/browse/widgets/molecules/browse_list_loader_molecule.dart';
import 'package:libremart/features/browse/widgets/organisms/app_tile_organism.dart';
import 'package:flutter/material.dart';

class BrowseListViewOrganism extends ConsumerWidget {
  const BrowseListViewOrganism({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(apiControllerProvider).allPackings?.when(
              data: (packings) => ListView.builder(
                itemCount: packings.length,
                itemBuilder: (context, index) {
                  ref
                      .read(apiControllerProvider.notifier)
                      .selectIndexForPacking(selectedIndex: index);
                  return const AppTileOrganism();
                },
              ),
              error: (e, s) => BrowseListError(e),
              loading: () => const BrowseListLoader(),
            ) ??
        const Text('is Null');
  }
}
