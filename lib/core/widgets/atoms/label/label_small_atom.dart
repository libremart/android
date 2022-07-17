import 'package:flutter/material.dart';

class LabelSmall extends StatelessWidget {
  const LabelSmall({Key? key, required this.data}) : super(key: key);

  final String data;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Text(
      data,
      style: TextStyle(
        fontSize: theme.textTheme.labelSmall!.fontSize,
        fontWeight: theme.textTheme.labelSmall!.fontWeight,
        letterSpacing: theme.textTheme.labelSmall!.letterSpacing,
      ),
    );
  }
}
