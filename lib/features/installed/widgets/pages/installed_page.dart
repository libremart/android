import 'package:bazaar/theme/typography/display/display_medium_atom.dart';
import 'package:flutter/material.dart';

class InstalledPage extends StatelessWidget {
  const InstalledPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: DisplayMedium(data: 'Installed Apps, N/A'),
    );
    // TODO: replicate browse page here and put a filter to show installed apps only.
  }
}
