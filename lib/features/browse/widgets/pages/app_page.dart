import 'package:bazaar/features/browse/widgets/atoms/elevated_download_button_atom.dart';
import 'package:bazaar/features/browse/widgets/organisms/app_container_organism.dart';
import 'package:flutter/material.dart';

class AppPage extends StatelessWidget {
  const AppPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        AppContainerOrganism(),
        ElevatedDownloadButtonAtom(),

        //AppSquizable: Screenshots.
        //AppSquizable: Links.
        //AppSquizable: Donate?
        //AppSquizable: Premissions?
        //AppSquizable: Versions?
        Text('Another Test for brave ppl?'),
      ],
    );
  }
}
