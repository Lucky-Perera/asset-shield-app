import 'package:flutter/material.dart';

class ColorPalette {
  const ColorPalette._();

  static const Color black = Color(0xFF000000);
  static const Color white = Color(0xFFFEFDFF);

  // Core palette
  static const Color primarySubtle = Color(0xFFD6E4FF);
  static const Color primary = Color(0xFF2695EF);
  static const Color warningBackground = Color(0xFFFFF5E6);
  static const Color warning = Color(0xFFFD9800);
  static const Color surfaceSubtle = Color(0xFFEAF4FF);
  static const Color surfaceMuted = Color(0xFFEBECEE);
  static const Color textMuted = Color(0xFF9BA0A8);
  static const Color textPrimary = Color(0xFF374151);
  static const Color dangerBackground = Color(0xFFFFEBED);
  static const Color danger = Color(0xFFFF3643);
  static const Color success = Color(0xFF15803D);
  static const Color toastBackground = Color(0xFF121212);

  static const Color onPrimary = white;

  static const Color background = white;
  static const Color surface = white;

  static const Color textSecondary = textPrimary;
  static const Color textInverse = white;

  static const Color disabled = textMuted;
  static const Color divider = surfaceMuted;
  static const Color border = surfaceMuted;
  static const Color borderStrong = textMuted;
  static const Color focus = primary;

  static const Color info = primary;
  static const Color error = danger;
}
