import 'package:flutter/foundation.dart';

class Utils {
  static int get timestamp => DateTime.now().millisecondsSinceEpoch;

  static bool isDebugMode() {
    return kDebugMode;
  }
}
