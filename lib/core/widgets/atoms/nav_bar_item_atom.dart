import 'package:flutter/material.dart';

class NavBarItemAtom extends NavigationDestination {
  const NavBarItemAtom({
    super.key,
    required this.initialLocation,
    required Icon icon,
    required Icon selectedIcon,
    required String label,
  }) : super(icon: icon, selectedIcon: selectedIcon, label: label);

  final String initialLocation;
}
