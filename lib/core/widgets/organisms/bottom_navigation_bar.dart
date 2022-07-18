import 'package:bazaar/core/shared/navigation_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BottomNavigationBarOrganism extends ConsumerWidget {
  const BottomNavigationBarOrganism({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var bottomNavigationIndex =
        ref.watch(bottomNavigationChangeNotifier).selectedIndex;
    return NavigationBar(
      height: 70,
      selectedIndex: bottomNavigationIndex,
      onDestinationSelected: (index) => bottomNavigationIndex = index,
      destinations: const [
        NavigationDestination(
          icon: Icon(Icons.manage_search_rounded),
          label: 'Apps',
        ),
        NavigationDestination(
          icon: Icon(Icons.security_update_good),
          label: 'Installed',
        ),
        NavigationDestination(
          icon: Icon(Icons.system_update),
          label: 'Updates',
        ),
      ],
    );
  }
}
