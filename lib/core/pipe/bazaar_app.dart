import 'package:auto_route/auto_route.dart';
import 'package:bazaar/core/widgets/organisms/bazaar_app_bar.dart';
import 'package:bazaar/core/widgets/organisms/bottom_navigation_bar.dart';
import 'package:bazaar/routes/router.gr.dart';
import 'package:bazaar/theme/constants.dart';
import 'package:flutter/material.dart';

class BazaarApp extends StatelessWidget {
  const BazaarApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      appBarBuilder: (_, tabsRouter) => const BazaarAppBarOrganism(),
      // appbar?!
      //            AppBar(
      //   title: const HeadlineMedium(
      //     data: kAppTitle,
      //   ),
      // ),
      routes: const [
        BrowseRouter(),
        InstalledRouter(),
        UpdatesRouter(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBarOrganism(tabsRouter: tabsRouter);
      },
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // context.router.push(const NewPostRouter());
        },
        icon: const Icon(Icons.search),
        label: const Text(kStringsFABSearch),
      ),
    );
  }
}
