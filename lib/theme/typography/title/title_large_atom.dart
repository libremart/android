import 'package:flutter/material.dart';

class TitleLarge extends StatelessWidget {
  const TitleLarge({Key? key, required this.data}) : super(key: key);

  final String data;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Text(
      data,
      style: TextStyle(
        fontSize: theme.textTheme.titleLarge!.fontSize,
        fontWeight: theme.textTheme.titleLarge!.fontWeight,
        letterSpacing: theme.textTheme.titleLarge!.letterSpacing,
        height: theme.textTheme.titleLarge!.height,
        color: theme.textTheme.titleLarge!.color,
      ),
    );
  }
}
