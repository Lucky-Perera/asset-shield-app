import 'package:flutter_easyloading/flutter_easyloading.dart';
import '../theme/color_palette.dart';
import '../utility/storage_service.dart';

class Configs {
  // API Configuration
  static const String defaultHost = "http://localhost:3000/api/mobile";
  // static const String host = "http://10.0.2.2:3000/api/mobile";
  // static const String host = "http://10.165.147.26:3000/api/mobile";
  static const Duration apiTimeout = Duration(seconds: 30);

  /// Returns the host URL from secure storage if available, otherwise returns the default localhost URL
  /// Automatically appends /api/mobile to custom URLs if not already present
  static Future<String> getHost() async {
    final customHost = await StorageService().getHostUrl();
    if (customHost == null) return defaultHost;

    // Append /api/mobile if not already present
    if (!customHost.endsWith('/api/mobile')) {
      // Remove trailing slash if present before appending
      final cleanUrl = customHost.endsWith('/')
          ? customHost.substring(0, customHost.length - 1)
          : customHost;
      return '$cleanUrl/api/mobile';
    }
    return customHost;
  }

  void configLoading() {
    EasyLoading.instance
      ..displayDuration = const Duration(milliseconds: 2000)
      ..indicatorType = EasyLoadingIndicatorType.fadingCircle
      ..loadingStyle = EasyLoadingStyle.custom
      ..indicatorSize = 45.0
      ..radius = 20.0
      ..progressColor = ColorPalette.white
      ..backgroundColor = ColorPalette.black
      ..indicatorColor = ColorPalette.white
      ..textColor = ColorPalette.white
      ..maskType = EasyLoadingMaskType.black
      ..maskColor = ColorPalette.black.withValues(alpha: 0.5)
      ..userInteractions = false;
  }
}
