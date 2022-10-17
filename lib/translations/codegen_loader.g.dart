// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>> load(String fullPath, Locale locale ) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> en = {
  "title_browse": "Browse",
  "title_installed": "Install",
  "title_updates": "Updates",
  "field_currentversion_name": "Current Version",
  "field_currentversion_hint": "1.0.3",
  "field_published_name": "Published"
};
static const Map<String,dynamic> he = {
  "title_browse": "חפש",
  "title_installed": "מותקן",
  "title_updates": "עדכונים",
  "field_currentversion_name": "גרסא נוכחית",
  "field_currentversion_hint": "1.0.4",
  "field_published_name": "פורסם ב"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"en": en, "he": he};
}
