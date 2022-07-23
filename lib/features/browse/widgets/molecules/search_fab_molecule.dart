import 'package:flutter/material.dart';
import 'package:bazaar/theme/constants.dart';

class SearchFABMolecule extends StatelessWidget {
  const SearchFABMolecule({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: () {
        //
      },
      icon: const Icon(Icons.search),
      label: const Text(kStringsFABSearch),
      tooltip: kStringsFABSearchTooltip,
    );
  }
}
