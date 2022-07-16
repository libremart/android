import 'package:flutter/material.dart';

class HeadingSmall extends StatelessWidget {
  const HeadingSmall({Key? key, required this.data}) : super(key: key);

  final String data;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Text(
      'wow',
      style: TextStyle(
        fontSize: theme.textTheme.displaySmall!.fontSize,
        fontWeight: theme.textTheme.displaySmall!.fontWeight,
        letterSpacing: theme.textTheme.displaySmall!.letterSpacing,
      ),
    );
  }
}
