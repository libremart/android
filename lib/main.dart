import 'package:bazaar/core/pipe/bazaar_core.dart';
import 'package:bazaar/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  final appRouter = AppRouter();

  runApp(
    ProviderScope(
      child: BazaarCore(
        appRouter: appRouter,
      ),
    ),
  );
}
