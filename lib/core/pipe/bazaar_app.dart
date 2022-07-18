import 'package:flutter/material.dart';
import 'package:bazaar/core/widgets/organisms/bottom_navigation_bar.dart';
import 'package:bazaar/theme/typography/title/title_large_atom.dart';

class BazaarApp extends StatelessWidget {
  const BazaarApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavigationBarOrganism(),
      appBar: AppBar(
        title: const Text(
          'Test For Brave Lions',
        ),
      ),
      body: const Center(child: TitleLarge(data: 'Test For Bazaar')),
    );
  }
}
