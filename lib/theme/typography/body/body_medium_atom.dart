import 'package:flutter/material.dart';

class BodyMedium extends StatelessWidget {
  const BodyMedium({Key? key, required this.data}) : super(key: key);

  final String data;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Text(
      data,
      style: TextStyle(
        fontSize: theme.textTheme.bodyMedium!.fontSize,
        fontWeight: theme.textTheme.bodyMedium!.fontWeight,
        letterSpacing: theme.textTheme.bodyMedium!.letterSpacing,
        height: theme.textTheme.bodyMedium!.height,
        color: theme.textTheme.bodyMedium!.color,
      ),
    );
  }
}
