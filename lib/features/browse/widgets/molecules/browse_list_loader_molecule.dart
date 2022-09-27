import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:libremart/theme/constants.dart';

class BrowseListLoader extends ConsumerWidget {
  const BrowseListLoader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Text(
            kStringsLoading,
          ), //! TODO: Implement a chat like animation as based on the page design skeleton.
          CircularProgressIndicator()
        ],
      ),
    );
  }
}
