import 'package:flutter/material.dart';
import 'package:bazaar/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:bazaar/features/browse/widgets/atoms/tile_subtitle_atom.dart';
import 'package:bazaar/features/browse/widgets/atoms/tile_title_atom.dart';

class AppTileOrganism extends StatelessWidget {
  const AppTileOrganism({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      child: ListTile(
        onTap: () {
          context.router.push(const AppRoute());
        },
        leading: const CircleAvatar(
          child: Icon(Icons.system_security_update_rounded),
        ),
        title: TileTitleAtom(theme: theme),
        subtitle: TileSubtitleAtom(theme: theme),
        tileColor: theme.listTileTheme.tileColor,
        enableFeedback: true,
        minLeadingWidth: 30,
      ),
    );
  }
}
