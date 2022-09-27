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
    final packings = apiController.allPackings?.asData?.value ?? [];
    return Text(
      packings[apiController.selectedPacking!].name!,
      style: theme.textTheme.titleMedium,
    );
  }
}
