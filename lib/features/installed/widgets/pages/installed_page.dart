import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:libremart/features/api/api_repository.dart';

class InstalledPage extends ConsumerWidget {
  const InstalledPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        const OutlinedButton(
          onPressed: null,
          child: Text('Outlined but not active'),
        ),
        OutlinedButton(
          // onPressed: ref.read(apiControllerProvider.notifier).getAllPackagings,
          onPressed: ref.read(apiRepositoryProvider).fuckThisShit,
          child: const Text('Outlined button - TEST'),
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
