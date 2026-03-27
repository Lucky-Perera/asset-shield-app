import 'package:flutter/material.dart';

class ColorPalette {
  const ColorPalette._();

  // Core utility colors
  static const Color black = Color(0xFF000000);
  static const Color white = Color(0xFFFEFDFF);

  // Approved UI palette
  static const Color primarySoft = Color(0xFFD6E4FF);
  static const Color primaryBlue = Color(0xFF2695EF);
  static const Color warningSoft = Color(0xFFFFF5E6);
  static const Color warningOrange = Color(0xFFFD9800);
  static const Color infoSoft = Color(0xFFEAF4FF);
  static const Color neutral100 = Color(0xFFEBECEE);
  static const Color neutral400 = Color(0xFF9BA0A8);
  static const Color neutral700 = Color(0xFF374151);
  static const Color dangerRed = Color(0xFFFF3643);
  static const Color dangerSoft = Color(0xFFFFEBED);

  // Compatibility aliases for lighter/darker blue usage in existing theme code
  static const Color accent50 = primarySoft;
  static const Color accent100 = primarySoft;
  static const Color accent200 = infoSoft;
  static const Color accent300 = primarySoft;
  static const Color accent400 = primaryBlue;
  static const Color accent500 = primaryBlue;
  static const Color accent600 = primaryBlue;
  static const Color accent700 = primaryBlue;
  static const Color accent800 = primaryBlue;
  static const Color accent900 = primaryBlue;

  static const int _blackPrimaryValue = 0xFF000000;
  static const MaterialColor blackSwatch =
      MaterialColor(_blackPrimaryValue, <int, Color>{
        50: Color(0xFFF5F5F5),
        100: Color(0xFFE0E0E0),
        200: Color(0xFFBDBDBD),
        300: Color(0xFF9E9E9E),
        400: Color(0xFF757575),
        500: Color(_blackPrimaryValue),
        600: Color(0xFF424242),
        700: Color(0xFF212121),
        800: Color(0xFF121212),
        900: Color(0xFF000000),
      });

  static const int _whitePrimaryValue = 0xFFFEFDFF;
  static const MaterialColor whiteSwatch =
      MaterialColor(_whitePrimaryValue, <int, Color>{
        50: Color(0xFFFFFFFF),
        100: Color(0xFFFEFDFF),
        200: Color(0xFFF8FAFC),
        300: Color(0xFFF2F5F9),
        400: Color(0xFFEEF2F6),
        500: Color(_whitePrimaryValue),
        600: Color(0xFFF8FAFC),
        700: Color(0xFFF2F5F9),
        800: Color(0xFFEEF2F6),
        900: Color(0xFFE7EBF0),
      });

  static const Color grey900 = Color(0xFF121212);
  static const Color grey800 = Color(0xFF1F1F1F);
  static const Color grey700 = neutral700;
  static const Color grey600 = neutral700;
  static const Color grey500 = neutral400;
  static const Color grey400 = neutral400;
  static const Color grey300 = neutral100;
  static const Color grey200 = neutral100;
  static const Color grey100 = neutral100;
  static const Color grey50 = infoSoft;

  // Dark theme support
  static const Color darkBackground = Color(0xFF0E141B);
  static const Color darkSurface = Color(0xFF151D27);
  static const Color darkSurfaceAlt = Color(0xFF1E2835);
  static const Color darkBorder = Color(0xFF334155);
  static const Color darkTextPrimary = Color(0xFFF5F7FA);
  static const Color darkTextMuted = Color(0xFF94A3B8);

  // Semantic aliases
  static const Color primary = primaryBlue;
  static const Color onPrimary = white;
  static const Color accent = primaryBlue;
  static const Color onAccent = white;

  static const Color background = white;
  static const Color surface = white;
  static const Color surfaceAlt = infoSoft;
  static const Color surfaceMuted = neutral100;

  static const Color textPrimary = neutral700;
  static const Color textSecondary = neutral700;
  static const Color textMuted = neutral400;
  static const Color textInverse = white;

  static const Color disabled = neutral400;
  static const Color divider = neutral100;
  static const Color border = neutral100;
  static const Color borderStrong = neutral400;
  static const Color hint = textMuted;
  static const Color focus = primaryBlue;

  // Keep success separate until a dedicated success color is provided.
  static const Color success = Color(0xFF15803D);
  static const Color warning = warningOrange;
  static const Color info = primaryBlue;
  static const Color danger = dangerRed;
  static const Color error = danger;
}
