import 'package:flutter/material.dart';

class InstalledPage extends StatelessWidget {
  const InstalledPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const OutlinedButton(
            onPressed: null, child: Text('Outlined but not active')),
        OutlinedButton(
          onPressed: () {},
          child: const Text('Outlined button'),
        ),
        OutlinedButton.icon(
          icon: const Icon(Icons.person),
          onPressed: () {},
          label: const Text('Outlined button with icon'),
        ),
        const TextButton(
          onPressed: null,
          child: Text('Text button but not active'),
        ),
        TextButton(
          onPressed: () {},
          child: const Text('Text button'),
        ),
        TextButton.icon(
          icon: const Icon(Icons.person),
          onPressed: () {},
          label: const Text('Text button with icon'),
        ),
        const ElevatedButton(
          onPressed: null,
          child: Text('Elevated button but not active'),
        ),
        ElevatedButton(
          onPressed: () {},
          child: const Text('Elevated button'),
        ),
        ElevatedButton.icon(
          icon: const Icon(
            Icons.person,
          ),
          onPressed: () {},
          label: const Text(
            'Elevated button with icon',
          ),
        ),
      ],
    );

    // TODO: replicate browse page here and put a filter to show installed apps only.
  }
}
