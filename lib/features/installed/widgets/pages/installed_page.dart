import 'package:bazaar/theme/typography/display/display_large_atom.dart';
import 'package:flutter/material.dart';

class InstalledPage extends StatelessWidget {
  const InstalledPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: DisplayLarge(data: 'hello from Installed!'),
    );
  }
}
