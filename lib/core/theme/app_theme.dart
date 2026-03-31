import 'package:asset_shield/core/theme/color_palette.dart';
import 'package:asset_shield/core/theme/app_typography.dart';
import 'package:asset_shield/core/theme/app_tokens.dart';
import 'package:asset_shield/core/theme/schedule_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTheme {
  static ThemeData get lightTheme {
    final colorScheme = _lightColorScheme;
    final textTheme = AppTypography.textTheme(
      primaryTextColor: ColorPalette.textPrimary,
      mutedTextColor: ColorPalette.textMuted,
    );

    return ThemeData(
      brightness: Brightness.light,
      primaryColor: colorScheme.primary,
      scaffoldBackgroundColor: ColorPalette.background,
      fontFamily: AppFontFamilies.primary,
      textTheme: textTheme,
      colorScheme: colorScheme,
      extensions: <ThemeExtension<dynamic>>[
        ScheduleThemeData.light(),
      ],
      dividerColor: ColorPalette.divider,
      disabledColor: ColorPalette.disabled,
      iconTheme: const IconThemeData(color: ColorPalette.textPrimary),
      appBarTheme: _buildAppBarTheme(
        textTheme: textTheme,
        colorScheme: colorScheme,
      ),
      inputDecorationTheme: _buildInputDecorationTheme(),
      elevatedButtonTheme: _buildElevatedButtonTheme(textTheme: textTheme),
      outlinedButtonTheme: _buildOutlinedButtonTheme(textTheme: textTheme),
      textButtonTheme: _buildTextButtonTheme(textTheme: textTheme),
      checkboxTheme: _buildCheckboxTheme(),
      dialogTheme: _buildDialogTheme(textTheme: textTheme),
      datePickerTheme: _buildDatePickerTheme(
        textTheme: textTheme,
        colorScheme: colorScheme,
      ),
    );
  }

  static final ColorScheme _lightColorScheme =
      ColorScheme.fromSeed(
        seedColor: ColorPalette.primary,
        brightness: Brightness.light,
      ).copyWith(
        primary: ColorPalette.primary,
        onPrimary: ColorPalette.onPrimary,
        secondary: ColorPalette.info,
        onSecondary: ColorPalette.onPrimary,
        surface: ColorPalette.surface,
        onSurface: ColorPalette.textPrimary,
        error: ColorPalette.error,
        onError: ColorPalette.textInverse,
      );

  static AppBarTheme _buildAppBarTheme({
    required TextTheme textTheme,
    required ColorScheme colorScheme,
  }) {
    return AppBarTheme(
      backgroundColor: ColorPalette.background,
      foregroundColor: colorScheme.onSurface,
      elevation: 0,
      surfaceTintColor: Colors.transparent,
      iconTheme: IconThemeData(color: colorScheme.onSurface),
      titleTextStyle: textTheme.titleMedium?.copyWith(
        color: colorScheme.onSurface,
      ),
    );
  }

  static InputDecorationTheme _buildInputDecorationTheme() {
    return InputDecorationTheme(
      filled: true,
      fillColor: ColorPalette.surface,
      hintStyle: AppTypography.style(
        size: AppFontSizes.label,
        color: ColorPalette.textMuted,
      ),
      contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
      border: _inputBorder(ColorPalette.border),
      enabledBorder: _inputBorder(ColorPalette.border),
      focusedBorder: _inputBorder(ColorPalette.focus),
      errorBorder: _inputBorder(ColorPalette.error),
      focusedErrorBorder: _inputBorder(ColorPalette.error),
      disabledBorder: _inputBorder(ColorPalette.surfaceMuted),
      errorStyle: AppTypography.style(
        size: AppFontSizes.caption,
        color: ColorPalette.error,
        height: 1.3,
      ),
    );
  }

  static ElevatedButtonThemeData _buildElevatedButtonTheme({
    required TextTheme textTheme,
  }) {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorPalette.primary,
        foregroundColor: ColorPalette.onPrimary,
        disabledBackgroundColor: ColorPalette.primary.withValues(alpha: 0.5),
        disabledForegroundColor: ColorPalette.onPrimary.withValues(alpha: 0.7),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppRadii.sm.r),
        ),
        elevation: 0,
        textStyle: textTheme.titleSmall,
      ),
    );
  }

  static OutlinedButtonThemeData _buildOutlinedButtonTheme({
    required TextTheme textTheme,
  }) {
    return OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: ColorPalette.textPrimary,
        side: const BorderSide(color: ColorPalette.border),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppRadii.sm.r),
        ),
        textStyle: textTheme.labelMedium?.copyWith(
          fontWeight: AppFontWeights.medium,
        ),
      ),
    );
  }

  static TextButtonThemeData _buildTextButtonTheme({
    required TextTheme textTheme,
  }) {
    return TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: ColorPalette.primary,
        textStyle: textTheme.labelMedium?.copyWith(
          fontWeight: AppFontWeights.medium,
        ),
      ),
    );
  }

  static CheckboxThemeData _buildCheckboxTheme() {
    return CheckboxThemeData(
      fillColor: const WidgetStatePropertyAll(ColorPalette.primary),
      checkColor: const WidgetStatePropertyAll(ColorPalette.onPrimary),
      side: const BorderSide(color: ColorPalette.borderStrong),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppRadii.xs.r),
      ),
    );
  }

  static DialogThemeData _buildDialogTheme({
    required TextTheme textTheme,
  }) {
    return DialogThemeData(
      backgroundColor: ColorPalette.surface,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppRadii.lg.r),
      ),
      titleTextStyle: textTheme.titleSmall,
      contentTextStyle: textTheme.labelMedium?.copyWith(
        color: ColorPalette.textSecondary,
      ),
    );
  }

  static DatePickerThemeData _buildDatePickerTheme({
    required TextTheme textTheme,
    required ColorScheme colorScheme,
  }) {
    return DatePickerThemeData(
      backgroundColor: ColorPalette.surface,
      surfaceTintColor: Colors.transparent,
      headerBackgroundColor: colorScheme.primary,
      headerForegroundColor: colorScheme.onPrimary,
      dayForegroundColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return colorScheme.onPrimary;
        }
        return colorScheme.onSurface;
      }),
      dayBackgroundColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return colorScheme.primary;
        }
        return null;
      }),
      todayForegroundColor: WidgetStatePropertyAll(colorScheme.primary),
      todayBorder: BorderSide(color: colorScheme.primary),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppRadii.lg.r),
      ),
      cancelButtonStyle: TextButton.styleFrom(
        foregroundColor: colorScheme.primary,
      ),
      confirmButtonStyle: TextButton.styleFrom(
        foregroundColor: colorScheme.primary,
        textStyle: textTheme.labelMedium?.copyWith(
          fontWeight: AppFontWeights.semiBold,
        ),
      ),
    );
  }

  static OutlineInputBorder _inputBorder(Color borderColor) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppRadii.sm.r),
      borderSide: BorderSide(color: borderColor),
    );
  }
}
