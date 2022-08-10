import 'package:bazaar/core/demo_app.dart';
import 'package:bazaar/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dio/dio.dart';

void main() {
  final appRouter = AppRouter();

  runApp(
    const ProviderScope(
      // child: BazaarCore(
      //   appRouter: appRouter,
      child: RSSDemo(),
    ),
  );
}
// RSSDemo(),

final dioProvider = Provider<Dio>((ref) {
  return Dio(BaseOptions(
    baseUrl: 'https://www.github.com/',
    // baseUrl: 'https://www.github.com/ashinch/ReadYou/releases.atom',
    // repo owner + / reponame .atom at the end
  ));
});
