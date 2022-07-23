import 'package:flutter/material.dart';

class AppImageAtom extends StatelessWidget {
  const AppImageAtom({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Icon(
      Icons.app_blocking_sharp,
      size: 80,
    );
  }
}
