import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:libremart/features/api/api_controller.dart';

class TileTitleAtom extends ConsumerWidget {
  const TileTitleAtom({
    Key? key,
    required this.theme,
  }) : super(key: key);

  final ThemeData theme;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final apiController = ref.read(apiControllerProvider);
    final products = apiController.allProducts.asData?.value ?? [];
    return Text(
      products[apiController.selectedPacking].productName!,
      style: theme.textTheme.titleMedium,
    );
  }
}
