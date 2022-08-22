import 'package:auto_route/auto_route.dart';
import 'package:libremart/core/widgets/organisms/libremart_app_bar_organism.dart';
import 'package:libremart/core/widgets/organisms/bottom_navigation_bar.dart';
import 'package:libremart/routes/router.gr.dart';
import 'package:flutter/material.dart';

class LibreMartApp extends StatelessWidget {
  const LibreMartApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      appBarBuilder: (_, tabsRouter) =>
          LibreMartAppBarOrganism(tabsRouter: tabsRouter),
      routes: const [
        BrowseRouter(),
        InstalledRouter(),
        UpdatesRouter(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBarOrganism(tabsRouter: tabsRouter);
      },
    );
  }
}
