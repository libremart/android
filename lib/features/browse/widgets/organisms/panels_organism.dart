import 'package:libremart/features/browse/widgets/molecules/panel_molecule.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:libremart/features/scrape/scrape_controller.dart';

class PanelsOrganism extends ConsumerWidget {
  const PanelsOrganism({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        PanelMolecule(
          title: 'Screenshots',
          content: Row(
            children: const [
              Text('22'),
              Text('yes'),
              Text('yes'),
              Text('yes'),
            ],
          ),
        ),
        PanelMolecule(
          title: 'Links',
          content: Row(
            children: const [
              Text('22'),
            ],
          ),
        ),
        PanelMolecule(
          title: 'Donate',
          content: Row(
            children: const [
              Text('22'),
            ],
          ),
        ),
        PanelMolecule(
          title: 'Premissions',
          content: Row(
            children: const [
              Text('22'),
            ],
          ),
        ),
        PanelMolecule(
          title: 'Versions',
          content: ref.watch(browseControllerProvider).appReleases.when(
                data: (releases) {
                  return SizedBox(
                      height: 200,
                      child: ListView.builder(
                        itemCount: releases.length,
                        itemBuilder: (context, index) {
                          return Text(releases[index].title!);
                        },
                      ));
                },
                loading: () => const CircularProgressIndicator(),
                error: (e, r) => Text(
                  e.toString(),
                ),
              ),
        )
      ],
    );
  }
}
