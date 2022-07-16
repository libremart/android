import 'package:flutter/material.dart';

class HeadlineMedium extends StatelessWidget {
  const HeadlineMedium({Key? key, required this.data}) : super(key: key);

  final String data;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Text(
      'wow',
      style: TextStyle(
        fontSize: theme.textTheme.headlineMedium!.fontSize,
        fontWeight: theme.textTheme.headlineMedium!.fontWeight,
        letterSpacing: theme.textTheme.headlineMedium!.letterSpacing,
      ),
    );
  }
}
