import 'package:flutter/material.dart';
import 'package:system_core/theme/systemcore_theme.dart';

int index = 0;

class BazaarApp extends StatelessWidget {
  const BazaarApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: BazaarTheme.theme(context, Brightness.light),
      home: Scaffold(
        bottomNavigationBar: NavigationBarTheme(
          data: NavigationBarThemeData(
            labelTextStyle: MaterialStateProperty.all(
              const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
          ),
          child: NavigationBar(
            height: 70,
            selectedIndex: index,
            // onDestinationSelected: (index) => ,
            destinations: const [
              NavigationDestination(
                icon: Icon(Icons.access_alarm),
                label: 'Alarm',
              ),
              NavigationDestination(
                icon: Icon(Icons.wind_power_rounded),
                label: 'Wow',
              ),
              NavigationDestination(
                icon: Icon(Icons.person),
                label: 'Himler',
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: const Text(
            'Test For Brave Lions',
          ),
        ),
        body: const Center(child: Text('Test For System Utils')),
      ),
    );
  }
}
