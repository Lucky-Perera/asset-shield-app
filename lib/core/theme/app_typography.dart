import 'package:asset_shield/core/theme/color_palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppFontFamilies {
  static const String primary = 'Poppins';
}

class AppFontSizes {
  static const double caption = 12;
  static const double helper = 13;
  static const double label = 14;
  static const double body = 16;
  static const double title = 20;
  static const double headline = 24;
  static const double display = 32;
}

class AppFontWeights {
  static const FontWeight regular = FontWeight.w400;
  static const FontWeight medium = FontWeight.w500;
  static const FontWeight semiBold = FontWeight.w600;
  static const FontWeight bold = FontWeight.w700;
}

class AppTypography {
  static TextStyle style({
    double size = AppFontSizes.body,
    FontWeight weight = AppFontWeights.regular,
    Color color = ColorPalette.textPrimary,
    double height = 1.4,
  }) {
    return TextStyle(
      fontFamily: AppFontFamilies.primary,
      fontSize: size.sp,
      fontWeight: weight,
      color: color,
      height: height,
    );
  }

  static TextTheme textTheme({
    required Color primaryTextColor,
    required Color mutedTextColor,
  }) {
    return TextTheme(
      labelSmall: style(
        size: AppFontSizes.caption,
        color: primaryTextColor,
        height: 1.3,
      ),
      labelMedium: style(
        size: AppFontSizes.label,
        color: primaryTextColor,
        height: 1.3,
      ),
      labelLarge: style(
        size: AppFontSizes.label,
        weight: AppFontWeights.medium,
        color: primaryTextColor,
        height: 1.3,
      ),
      bodySmall: style(size: AppFontSizes.helper, color: mutedTextColor),
      bodyMedium: style(size: AppFontSizes.body, color: primaryTextColor),
      bodyLarge: style(size: AppFontSizes.body, color: primaryTextColor),
      titleSmall: style(
        size: AppFontSizes.body,
        weight: AppFontWeights.semiBold,
        color: primaryTextColor,
        height: 1.3,
      ),
      titleMedium: style(
        size: AppFontSizes.title,
        weight: AppFontWeights.medium,
        color: primaryTextColor,
        height: 1.3,
      ),
      titleLarge: style(
        size: AppFontSizes.headline,
        weight: AppFontWeights.semiBold,
        color: primaryTextColor,
        height: 1.3,
      ),
      headlineMedium: style(
        size: AppFontSizes.headline,
        weight: AppFontWeights.medium,
        color: primaryTextColor,
        height: 1.3,
      ),
      headlineLarge: style(
        size: AppFontSizes.display,
        weight: AppFontWeights.bold,
        color: primaryTextColor,
        height: 1.2,
      ),
    );
  }
}
