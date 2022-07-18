import 'package:flutter/material.dart';

class BodySmall extends StatelessWidget {
  const BodySmall({Key? key, required this.data}) : super(key: key);

  final String data;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Text(
      data,
      style: TextStyle(
        fontSize: theme.textTheme.bodySmall!.fontSize,
        fontWeight: theme.textTheme.bodySmall!.fontWeight,
        letterSpacing: theme.textTheme.bodySmall!.letterSpacing,
        height: theme.textTheme.bodySmall!.height,
      ),
    );
  }
}
