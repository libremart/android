import 'package:flutter/material.dart';

class VerticalDividerAtom extends StatelessWidget {
  const VerticalDividerAtom({
    Key? key,
    required this.theme,
  }) : super(key: key);

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: theme.colorScheme.onSurfaceVariant,
      width: 2.5,
      height: 45,
    );
  }
}
