import 'package:flutter/material.dart';

class DisplayMedium extends StatelessWidget {
  const DisplayMedium({Key? key, required this.data}) : super(key: key);

  final String data;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Text(
      'wow',
      style: TextStyle(
        fontSize: theme.textTheme.displayMedium!.fontSize,
        fontWeight: theme.textTheme.displayMedium!.fontWeight,
        letterSpacing: theme.textTheme.displayMedium!.letterSpacing,
      ),
    );
  }
}
