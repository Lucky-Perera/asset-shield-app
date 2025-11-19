import 'package:flutter/material.dart';

/// Centralized color palette focused on the project's main colors: black & white.
/// Provides convenient greys, MaterialColor swatches and semantic colors used across the app.
class ColorPalette {
  // Primary monochrome colors
  static const Color black = Color(0xFF000000);
  static const Color white = Color(0xFFFBFDFF);

  // Black MaterialColor swatch (useful for theming widgets that accept MaterialColor)
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

  // White swatch (keeps a very-light-to-white range; white is slightly off-pure to match existing branding)
  static const int _whitePrimaryValue = 0xFFFBFDFF;
  static const MaterialColor whiteSwatch =
      MaterialColor(_whitePrimaryValue, <int, Color>{
        50: Color(0xFFFFFFFF),
        100: Color(0xFFFBFBFB),
        200: Color(0xFFF5F5F5),
        300: Color(0xFFF0F0F0),
        400: Color(0xFFEEEEEE),
        500: Color(_whitePrimaryValue),
        600: Color(0xFFF0F0F0),
        700: Color(0xFFEEEEEE),
        800: Color(0xFFEDEDED),
        900: Color(0xFFECECEC),
      });

  // Greys (handy utility shades)
  static const Color grey900 = Color(0xFF121212);
  static const Color grey800 = Color(0xFF1F1F1F);
  static const Color grey700 = Color(0xFF2E2E2E);
  static const Color grey600 = Color(0xFF424242);
  static const Color grey500 = Color(0xFF616161);
  static const Color grey400 = Color(0xFF9E9E9E);
  static const Color grey300 = Color(0xFFE0E0E0);
  static const Color grey200 = Color(0xFFEEEEEE);
  static const Color grey100 = Color(0xFFF5F5F5);
  static const Color grey50 = Color(0xFFFAFAFA);

  // Semantic aliases used across the app
  static const Color primary = black;
  static const Color onPrimary = white;

  static const Color background = white;
  static const Color onBackground = black;

  static const Color surface = white;
  static const Color onSurface = black;

  static const Color disabled = grey400;
  static const Color divider = Color(0xFFEEEEEE);
  static const Color hint = grey500;
}
