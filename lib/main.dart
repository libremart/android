import 'package:libremart/core/demo_scrape_github.dart';
import 'package:libremart/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;

void main() {
  final appRouter = AppRouter();

  runApp(const ProviderScope(
    // child: libremartCore(
    // appRouter: appRouter,
    child: ScrapeDemoGit(),
  ));
}
// RSSDemo(),

final httpClientProvider = Provider<http.Client>((ref) {
  return http.Client();
});
