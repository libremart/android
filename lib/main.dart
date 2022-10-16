import 'package:libremart/core/pipe/libremart_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:libremart/routes/router.dart';

// late Future<Box<dynamic>> box;

Future<void> main() async {
  // await Hive.initFlutter();
  // box = Hive.openBox('box');
  // final appRouter = AppRouter();

  runApp(
    ProviderScope(
      child: LibremartCore(
        router: goRouter,
        // child: ScrapeDemoGit(),
      ),
    ),
  );
}
// RSSDemo(),

final httpClientProvider = Provider<http.Client>((ref) {
  return http.Client();
});
