import 'package:flutter/material.dart';

class TitleSmall extends StatelessWidget {
  const TitleSmall({Key? key, required this.data}) : super(key: key);

  final String data;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Text(
      data,
      style: TextStyle(
        fontSize: theme.textTheme.titleSmall!.fontSize,
        fontWeight: theme.textTheme.titleSmall!.fontWeight,
        letterSpacing: theme.textTheme.titleSmall!.letterSpacing,
        height: theme.textTheme.titleSmall!.height,
      ),
    );
  }
}
