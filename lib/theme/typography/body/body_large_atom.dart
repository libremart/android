import 'package:flutter/material.dart';

class BodyLarge extends StatelessWidget {
  const BodyLarge({Key? key, required this.data}) : super(key: key);

  final String data;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Text(
      data,
      style: TextStyle(
        fontSize: theme.textTheme.bodyLarge!.fontSize,
        fontWeight: theme.textTheme.bodyLarge!.fontWeight,
        letterSpacing: theme.textTheme.bodyLarge!.letterSpacing,
        height: theme.textTheme.bodyLarge!.height,
      ),
    );
  }
}
