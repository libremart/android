import 'package:bazaar/theme/typography/display/display_small_atom.dart';
import 'package:flutter/material.dart';

class UpdatesPage extends StatelessWidget {
  const UpdatesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: DisplaySmall(data: 'All your applications are up to date'),
    );
    // TODO: replicate browse page here and put a filter to show installed apps only.
  }
}
