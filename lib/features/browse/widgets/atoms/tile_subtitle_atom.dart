import 'package:flutter/material.dart';

class TileSubtitleAtom extends StatelessWidget {
  const TileSubtitleAtom({
    Key? key,
    required this.theme,
  }) : super(key: key);

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Text(
      'App description goes here...',
      style: theme.textTheme.bodyMedium,
    );
  }
}
