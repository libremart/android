import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:libremart/features/api/api_controller.dart';
import 'package:libremart/features/browse/widgets/atoms/tile_subtitle_atom.dart';
import 'package:libremart/features/browse/widgets/atoms/tile_title_atom.dart';

class AppTileOrganism extends ConsumerWidget {
  const AppTileOrganism({Key? key, required this.index}) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final products = ref.read(apiControllerProvider).allProducts.value!;
    final theme = Theme.of(context);
    return Card(
      child: ListTile(
        onTap: () {
          //! context.router.push(const AppRoute());

          ref
              .read(apiControllerProvider.notifier)
              .setSelectedProduct(selectedProduct: products[index]);
        },
        leading: const CircleAvatar(
          child: Icon(Icons.track_changes_outlined),
        ),
        title: TileTitleAtom(theme: theme),
        subtitle: TileSubtitleAtom(theme: theme),
        tileColor: theme.listTileTheme.tileColor,
        enableFeedback: true,
        minLeadingWidth: 30,
      ),
    );
  }
}
