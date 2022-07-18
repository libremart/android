import 'package:flutter/material.dart';

class DisplaySmall extends StatelessWidget {
  const DisplaySmall({Key? key, required this.data}) : super(key: key);

  final String data;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Text(
      data,
      style: TextStyle(
        fontSize: theme.textTheme.displaySmall!.fontSize,
        fontWeight: theme.textTheme.displaySmall!.fontWeight,
        letterSpacing: theme.textTheme.displaySmall!.letterSpacing,
        height: theme.textTheme.displaySmall!.height,
        color: theme.textTheme.displaySmall!.color,
      ),
    );
  }
}
