import 'package:asset_shield/core/theme/color_palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      brightness: Brightness.light,
      primaryColor: ColorPalette.white,
      scaffoldBackgroundColor: ColorPalette.white,
      appBarTheme: _buildAppBarTheme(isDark: false),
      fontFamily: 'Poppins',
      textTheme: _buildTextTheme(),
      colorScheme: ColorScheme.fromSeed(
        seedColor: ColorPalette.white,
        surface: ColorPalette.white,
        surfaceBright: ColorPalette.white,
        surfaceContainer: ColorPalette.white,
        surfaceTint: ColorPalette.white,
        surfaceDim: ColorPalette.white,
        surfaceContainerLow: ColorPalette.white,
        surfaceContainerHigh: ColorPalette.white,
        surfaceContainerHighest: ColorPalette.white,
        surfaceContainerLowest: ColorPalette.white,
      ),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      brightness: Brightness.dark,
      primaryColor: ColorPalette.white,
      scaffoldBackgroundColor: ColorPalette.white,
      appBarTheme: _buildAppBarTheme(isDark: true),
      fontFamily: 'Poppins',
      textTheme: _buildTextTheme(isDark: true),
    );
  }

  static TextTheme _buildTextTheme({bool isDark = false}) {
    final baseColor = isDark ? Colors.white : Colors.black;
    final regularFontWeight = FontWeight.w400;
    final mediumFontWeight = FontWeight.w500;

    return TextTheme(
      // 1. Caption
      //    Font size: 12px | Line height: 130% | Font type: Regular
      labelSmall: TextStyle(
        fontSize: 12.sp,
        height: 1.3.h, // 130% of 12px
        fontWeight: regularFontWeight,
        color: baseColor,
      ),

      // 2. Label
      //    Font size: 14px | Line height: 130% | Font type: Regular
      labelMedium: TextStyle(
        fontSize: 14.sp,
        height: 1.3.h,
        fontWeight: regularFontWeight,
        color: baseColor,
      ),

      // 3. Base
      //    Font size: 16px | Line height: 130% | Font type: Regular
      bodyMedium: TextStyle(
        fontSize: 16.sp,
        height: 1.3.h,
        fontWeight: regularFontWeight,
        color: baseColor,
      ),

      // 4. H1
      //    Font size: 24px | Line height: 130% | Font type: Regular
      titleLarge: TextStyle(
        fontSize: 24.sp,
        height: 1.3.h,
        fontWeight: regularFontWeight,
        color: baseColor,
      ),

      // 5. H2
      //    Font size: 20px | Line height: 130% | Font type: Regular
      titleMedium: TextStyle(
        fontSize: 20.sp,
        height: 1.3.h,
        fontWeight: mediumFontWeight,
        color: baseColor,
      ),

      // 6. Display 1
      //    Font size: 24px | Line height: 130% | Font type: Medium
      headlineMedium: TextStyle(
        fontSize: 24.sp,
        height: 1.3.h,
        fontWeight: mediumFontWeight, //
        color: baseColor,
      ),

      // 7. Display 2
      //    Font size: 32px | Line height: 130% | Font type: Medium
      headlineLarge: TextStyle(
        fontSize: 32.sp,
        height: 1.3.h,
        fontWeight: mediumFontWeight, //
        color: baseColor,
      ),
    );
  }

  static AppBarTheme _buildAppBarTheme({bool isDark = false}) {
    return AppBarTheme(
      backgroundColor: ColorPalette.white,
      iconTheme: IconThemeData(color: isDark ? Colors.white : Colors.black),
      titleTextStyle: _buildTextTheme(
        isDark: isDark,
      ).titleMedium?.copyWith(color: isDark ? Colors.white : Colors.black),
    );
  }
}
