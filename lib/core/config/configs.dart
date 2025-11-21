import 'package:flutter_easyloading/flutter_easyloading.dart';
import '../theme/color_palette.dart';

class Configs {
  // API Configuration
  // static const String host = "http://localhost:3000/api/mobile";
  // static const String host = "http://10.0.2.2:8000/api/v1";
  static const String host = "http://10.193.119.225:3000/api/mobile";
  // App Configuration
  static const String appName = "Your App Name";
  static const Duration apiTimeout = Duration(seconds: 30);

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
