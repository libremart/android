import 'package:flutter/material.dart';

class TitleMedium extends StatelessWidget {
  const TitleMedium({Key? key, required this.data}) : super(key: key);

  final String data;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Text(
      data,
      style: TextStyle(
        fontSize: theme.textTheme.titleMedium!.fontSize,
        fontWeight: theme.textTheme.titleMedium!.fontWeight,
        letterSpacing: theme.textTheme.titleMedium!.letterSpacing,
        height: theme.textTheme.titleMedium!.height,
        color: theme.textTheme.titleMedium!.color,
      ),
    );
  }
}
