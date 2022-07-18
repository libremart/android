import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final bottomNavigationChangeNotifier =
    Provider.autoDispose<BottomNavigationChangeNotifier>(
  (ref) => BottomNavigationChangeNotifier(),
);

class BottomNavigationChangeNotifier extends ChangeNotifier {
  int selectedIndex = 0;
}
