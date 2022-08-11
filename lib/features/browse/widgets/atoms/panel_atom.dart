import 'package:flutter/material.dart';

class PanelTitle extends StatelessWidget {
  const PanelTitle({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: Theme.of(context).colorScheme.primary,
      ),
    );
  }
}
