import 'package:flutter/material.dart';

class AppDetailMolecule extends StatelessWidget {
  const AppDetailMolecule({
    required this.theme,
    required this.type,
    required this.data,
    Key? key,
  }) : super(key: key);

  final ThemeData theme;
  final String type;
  final String data;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(
        type,
        style: theme.textTheme.titleSmall
            ?.copyWith(color: theme.colorScheme.onSurfaceVariant),
      ),
      Text(
        data,
        style: theme.textTheme.titleMedium,
      ),
    ]);
  }
}
