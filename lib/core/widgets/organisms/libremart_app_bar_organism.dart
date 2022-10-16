import 'package:go_router/go_router.dart';
import 'package:libremart/core/widgets/atoms/app_bar_title_atom.dart';
import 'package:libremart/core/widgets/molecules/app_bar_actions_molecule.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LibreMartAppBarOrganism extends ConsumerStatefulWidget
    implements PreferredSizeWidget {
  const LibreMartAppBarOrganism({
    Key? key,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _LibreMartAppBarOrganismState();
}

class _LibreMartAppBarOrganismState
    extends ConsumerState<LibreMartAppBarOrganism> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final router = GoRouter.of(context);

    return AppBar(
      title: AppBarTitleAtom(
        theme: theme,
        router: router,
      ),
      actions: chooseActions(router: router),
    );
  }
}

// class AppBarActionList extends StatelessWidget {
//   const AppBarActionList({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return [];
//   }
// }
