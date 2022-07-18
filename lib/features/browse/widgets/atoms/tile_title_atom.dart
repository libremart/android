import 'package:flutter/material.dart';

class TileTitleAtom extends StatelessWidget {
  const TileTitleAtom({
    Key? key,
    required this.theme,
  }) : super(key: key);

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Text(
      'App Name',
      style: theme.textTheme.titleMedium,
    );
  }
}
