import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:libremart/features/api/api_controller.dart';
import 'package:libremart/features/browse/widgets/atoms/app_image_atom.dart';
import 'package:libremart/features/browse/widgets/atoms/vertical_divider_atom.dart';
import 'package:libremart/features/browse/widgets/molecules/app_detail_molecule.dart';
import 'package:libremart/theme/constants.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:flutter/material.dart';

class AppContainerOrganism extends ConsumerWidget {
  const AppContainerOrganism({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final product = ref.read(apiControllerProvider).selectedProduct;
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 2.h,
      ),
      child: Card(
        child: SizedBox(
          height: 35.h,
          width: 90.w,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 5.h,
              ),
              const AppImageAtom(),
              SizedBox(
                height: 1.h,
              ),
              Column(
                children: [
                  Text(
                    product.productName ?? 'App Name',
                    style: theme.textTheme.titleLarge
                        ?.copyWith(color: theme.colorScheme.onSurface),
                  ),
                  Text(
                    product.productPackage ?? 'me.lucky.wasted',
                    style: theme.textTheme.bodyLarge
                        ?.copyWith(color: theme.colorScheme.onSurfaceVariant),
                  ),
                ],
              ),
              SizedBox(
                height: 3.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AppDetailMolecule(
                    theme: theme,
                    type: kStringsAppDetailVersion,
                    // product.currentVersion ??
                    data: '1.5.1',
                  ),
                  VerticalDividerAtom(theme: theme),
                  AppDetailMolecule(
                    theme: theme,
                    type: kStringsAppDetailSize,
                    data: '5.2' ' MB',
                  ),
                  VerticalDividerAtom(theme: theme),
                  AppDetailMolecule(
                    theme: theme,
                    type: 'Source Code',
                    data: '',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
