import 'package:bazaar/theme/constants.dart';
import 'package:bazaar/theme/typography/headline/headline_medium_atom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BazaarAppBarOrganism extends ConsumerStatefulWidget
    implements PreferredSizeWidget {
  const BazaarAppBarOrganism({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _BazaarAppBarOrganismState();
}

class _BazaarAppBarOrganismState extends ConsumerState<BazaarAppBarOrganism> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const HeadlineMedium(
        data: kAppTitle,
      ),
    );
  }
}
