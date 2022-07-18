import 'package:bazaar/theme/constants.dart';
import 'package:flutter/material.dart';

class SearchFABMolecule extends StatelessWidget {
  const SearchFABMolecule({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: () {
        // context.router.push(const NewPostRouter());
      },
      icon: const Icon(Icons.search),
      label: const Text(kStringsFABSearch),
      tooltip: 'Search for an app',
    );
  }
}
