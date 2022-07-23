import 'package:auto_route/auto_route.dart';
import 'package:bazaar/core/shared/navigation_providers.dart';
import 'package:bazaar/theme/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BottomNavigationBarOrganism extends ConsumerWidget {
  const BottomNavigationBarOrganism({Key? key, required this.tabsRouter})
      : super(key: key);

  final TabsRouter tabsRouter;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var bottomNavigationIndex =
        ref.watch(bottomNavigationChangeNotifier).selectedIndex;
    return NavigationBarTheme(
      data: const NavigationBarThemeData(),
      child: NavigationBar(
        labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
        selectedIndex: tabsRouter.activeIndex,
        onDestinationSelected: tabsRouter.setActiveIndex,
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.manage_search_outlined),
            selectedIcon: Icon(Icons.manage_search_rounded),
            label: kStringsNavigationBrowse,
          ),
          NavigationDestination(
            icon: Icon(Icons.security_update_good_outlined),
            selectedIcon: Icon(Icons.security_update_good),
            label: kStringsNavigationInstalled,
          ),
          NavigationDestination(
            icon: Icon(Icons.system_update_outlined),
            selectedIcon: Icon(Icons.system_update),
            label: kStringsNavigationUpdates,
          ),
        ],
      ),
    );
  }
}
