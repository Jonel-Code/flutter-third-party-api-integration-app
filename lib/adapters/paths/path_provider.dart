import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:path_provider/path_provider.dart' as pp;

class PathProviderAdapter {
  PathProviderAdapter._();

  static String? _path;

  static String? get path {
    return _path!;
  }

  static Future<void> initPath() async {
    try {
      if (!kIsWeb) {
        final dir = await pp.getApplicationDocumentsDirectory();
        PathProviderAdapter._path = dir.path;
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
