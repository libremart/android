import 'package:flutter/material.dart';

class LabelMedium extends StatelessWidget {
  const LabelMedium({Key? key, required this.data}) : super(key: key);

  final String data;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Text(
      data,
      style: TextStyle(
        fontSize: theme.textTheme.labelMedium!.fontSize,
        fontWeight: theme.textTheme.labelMedium!.fontWeight,
        letterSpacing: theme.textTheme.labelMedium!.letterSpacing,
      ),
    );
  }
}
