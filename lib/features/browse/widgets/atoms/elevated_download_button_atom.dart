import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ElevatedDownloadButtonAtom extends StatelessWidget {
  const ElevatedDownloadButtonAtom({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(90.w, 4.h),
      ),
      icon: const Icon(
        Icons.download,
      ),
      onPressed: () {},
      label: const Text(
        'Download',
      ),
    );
  }
}
