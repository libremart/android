import 'package:easy_localization/easy_localization.dart';
import 'package:libremart/core/pipe/libremart_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:libremart/routes/router.dart';
import 'package:libremart/translations/codegen_loader.g.dart';

final httpClientProvider = Provider<http.Client>((ref) {
  return http.Client();
});

// late Future<Box<dynamic>> box;

Future<void> main() async {
  // await Hive.initFlutter();
  // box = Hive.openBox('box');
  // final appRouter = AppRouter();
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(EasyLocalization(
    supportedLocales: const [
      Locale('en'),
      Locale('he'),
    ],
    path: 'assets/translations',
    fallbackLocale: const Locale('en'),
    assetLoader: const CodegenLoader(),
    child: ProviderScope(
      child: LibremartCore(
        router: goRouter,
        // child: ScrapeDemoGit(),
      ),
    ),
  ));
}
// RSSDemo(),


//? flutter pub run easy_localization:generate -S "assets/translations" -O "lib/translations" -o "locale_keys.g.dart" -f keys
//? flutter pub run easy_localization:generate -S "assets/translations" -O "lib/translations"