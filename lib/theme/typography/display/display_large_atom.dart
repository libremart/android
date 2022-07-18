import 'package:flutter/material.dart';

class DisplayLarge extends StatelessWidget {
  const DisplayLarge({Key? key, required this.data}) : super(key: key);

  final String data;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Text(
      data,
      style: TextStyle(
        fontSize: theme.textTheme.displayLarge!.fontSize,
        fontWeight: theme.textTheme.displayLarge!.fontWeight,
        letterSpacing: theme.textTheme.displayLarge!.letterSpacing,
        height: theme.textTheme.displayLarge!.height,
      ),
    );
  }
}
