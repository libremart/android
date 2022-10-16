import 'package:libremart/core/widgets/organisms/libremart_app_bar_organism.dart';
import 'package:libremart/core/widgets/organisms/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class LibreMartApp extends StatelessWidget {
  const LibreMartApp({Key? key, required this.child}) : super(key: key);

  // This widget is the root of your application.
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const LibreMartAppBarOrganism(),
      body: child,
      bottomNavigationBar: const BottomNavigationBarOrganism(),
    );
  }
}
