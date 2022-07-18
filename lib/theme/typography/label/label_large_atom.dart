import 'package:flutter/material.dart';

class LabelLarge extends StatelessWidget {
  const LabelLarge({Key? key, required this.data}) : super(key: key);

  final String data;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Text(
      data,
      style: TextStyle(
        fontSize: theme.textTheme.labelLarge!.fontSize,
        fontWeight: theme.textTheme.labelLarge!.fontWeight,
        letterSpacing: theme.textTheme.labelLarge!.letterSpacing,
        height: theme.textTheme.labelLarge!.height,
        color: theme.textTheme.labelLarge!.color,
      ),
    );
  }
}
