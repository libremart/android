import 'package:bazaar/features/browse/widgets/atoms/elevated_download_button_atom.dart';
import 'package:bazaar/features/browse/widgets/organisms/app_container_organism.dart';
import 'package:bazaar/features/browse/widgets/organisms/panels_organism.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AppPage extends ConsumerWidget {
  const AppPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const AppContainerOrganism(),
          const ElevatedDownloadButtonAtom(),
          Padding(
            padding: EdgeInsets.all(4.w),
            child: const Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
            ),
          ),
          const PanelsOrganism(),
        ],
      ),
    );
  }
}
