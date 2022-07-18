import 'package:bazaar/features/browse/widgets/organisms/app_tile_organism.dart';
import 'package:flutter/material.dart';

class BrowseListViewOrganism extends StatelessWidget {
  const BrowseListViewOrganism({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return const AppTileOrganism();
      },
    );
  }
}
