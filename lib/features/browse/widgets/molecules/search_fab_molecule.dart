import 'package:flutter/material.dart';
import 'package:libremart/features/scrape/scrape_repository.dart';
import 'package:libremart/theme/constants.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SearchFABMolecule extends ConsumerWidget {
  const SearchFABMolecule({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FloatingActionButton.extended(
      onPressed: () {
        ref.read(scrapeRepositoryProvider).getReleasesRss(repositoryPath: '/');
      },
      icon: const Icon(Icons.search),
      label: const Text(kStringsFABSearch),
      tooltip: kStringsFABSearchTooltip,
    );
  }
}
