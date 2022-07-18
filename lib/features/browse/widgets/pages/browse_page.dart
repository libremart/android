import 'package:bazaar/features/browse/widgets/molecules/search_fab_molecule.dart';
import 'package:bazaar/features/browse/widgets/organisms/browse_list_view_organism.dart';
import 'package:flutter/material.dart';

class BrowsePage extends StatelessWidget {
  const BrowsePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BrowseListViewOrganism(),
      floatingActionButton: SearchFABMolecule(),
    );
  }
}
