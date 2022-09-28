import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:libremart/core/shared/utils.dart';
import 'package:libremart/features/api/api_controller.dart';
import 'package:libremart/theme/constants.dart';

class BrowseListError extends ConsumerWidget {
  final Object? e;

  const BrowseListError(
    this.e, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        Text(
          kStringsMessagesSometingWentWrong +
              (Utils.isDebugMode() ? (e?.toString() ?? "") : ""),
        ), //! TODO: Implement an SVG for something went wrong.
        ElevatedButton(
          onPressed: ref.read(apiControllerProvider.notifier).getAllProducts,
          child: const Text(kStringsMessagesRetry),
        )
      ],
    );
  }
}
