import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:libremart/core/widgets/atoms/nav_bar_item_atom.dart';
import 'package:libremart/theme/constants.dart';
import 'package:flutter/material.dart';
import 'package:libremart/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

late int currentIndex;
final destinations = [
  NavBarItemAtom(
    icon: const Icon(Icons.manage_search_outlined),
    selectedIcon: const Icon(Icons.manage_search_rounded),
    label: LocaleKeys.title_browse.tr(),
    initialLocation: kStringsRoutesBrowse,
  ),
  NavBarItemAtom(
    icon: const Icon(Icons.security_update_good_outlined),
    selectedIcon: const Icon(Icons.security_update_good),
    label: LocaleKeys.title_installed.tr(),
    initialLocation: kStringsRoutesInstalled,
  ),
  NavBarItemAtom(
    icon: const Icon(Icons.system_update_outlined),
    selectedIcon: const Icon(Icons.system_update),
    label: LocaleKeys.title_updates.tr(),
    initialLocation: kStringsRoutesUpdates,
  ),
];

class BottomNavigationBarOrganism extends ConsumerStatefulWidget {
  const BottomNavigationBarOrganism({Key? key}) : super(key: key);

  @override
  ConsumerState<BottomNavigationBarOrganism> createState() =>
      _BottomNavigationBarOrganismState();
}

class _BottomNavigationBarOrganismState
    extends ConsumerState<BottomNavigationBarOrganism> {
  @override
  Widget build(BuildContext context) {
    currentIndex = locationToTabIndex(GoRouter.of(context).location);
    return NavigationBarTheme(
      data: const NavigationBarThemeData(),
      child: NavigationBar(
          // labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
          selectedIndex: currentIndex,
          onDestinationSelected: (tabIndex) => onItemTapped(context, tabIndex),
          destinations: destinations),
    );
  }
}

int locationToTabIndex(String location) {
  final index =
      destinations.indexWhere((t) => location.startsWith(t.initialLocation));
  // if index not found (-1), return 0
  return index < 0 ? 0 : index;
}

// callback used to navigate to the desired tab
void onItemTapped(BuildContext context, int tabIndex) {
  if (tabIndex != currentIndex) {
    // go to the initial location of the selected tab (by index)
    context.go(destinations[tabIndex].initialLocation);
  }
}
