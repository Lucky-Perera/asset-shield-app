import 'package:asset_shield/core/theme/color_palette.dart';
import 'package:asset_shield/core/theme/app_typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTheme {
  static ThemeData get lightTheme => _buildTheme(isDark: false);

  static ThemeData get darkTheme => _buildTheme(isDark: true);

  static ThemeData _buildTheme({required bool isDark}) {
    final colorScheme = isDark ? _darkColorScheme : _lightColorScheme;
    final textTheme = AppTypography.textTheme(
      primaryTextColor: isDark
          ? ColorPalette.darkTextPrimary
          : ColorPalette.textPrimary,
      mutedTextColor: isDark
          ? ColorPalette.darkTextMuted
          : ColorPalette.textMuted,
    );

    return ThemeData(
      brightness: isDark ? Brightness.dark : Brightness.light,
      primaryColor: colorScheme.primary,
      scaffoldBackgroundColor: isDark
          ? ColorPalette.darkBackground
          : ColorPalette.background,
      fontFamily: AppFontFamilies.primary,
      textTheme: textTheme,
      colorScheme: colorScheme,
      dividerColor: isDark ? ColorPalette.darkBorder : ColorPalette.divider,
      disabledColor: isDark
          ? ColorPalette.darkTextMuted
          : ColorPalette.disabled,
      iconTheme: IconThemeData(
        color: isDark ? ColorPalette.darkTextPrimary : ColorPalette.textPrimary,
      ),
      appBarTheme: _buildAppBarTheme(
        textTheme: textTheme,
        colorScheme: colorScheme,
        isDark: isDark,
      ),
      inputDecorationTheme: _buildInputDecorationTheme(isDark: isDark),
      elevatedButtonTheme: _buildElevatedButtonTheme(textTheme: textTheme),
      outlinedButtonTheme: _buildOutlinedButtonTheme(textTheme: textTheme),
      textButtonTheme: _buildTextButtonTheme(textTheme: textTheme),
      checkboxTheme: _buildCheckboxTheme(),
      dialogTheme: _buildDialogTheme(textTheme: textTheme, isDark: isDark),
      datePickerTheme: _buildDatePickerTheme(
        textTheme: textTheme,
        colorScheme: colorScheme,
        isDark: isDark,
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
        secondary: ColorPalette.accent,
        onSecondary: ColorPalette.onAccent,
        surface: ColorPalette.surface,
        onSurface: ColorPalette.textPrimary,
        error: ColorPalette.error,
        onError: ColorPalette.textInverse,
      );

  static final ColorScheme _darkColorScheme =
      ColorScheme.fromSeed(
        seedColor: ColorPalette.accent,
        brightness: Brightness.dark,
      ).copyWith(
        primary: ColorPalette.accent,
        onPrimary: ColorPalette.onAccent,
        secondary: ColorPalette.accent300,
        onSecondary: ColorPalette.black,
        surface: ColorPalette.darkSurface,
        onSurface: ColorPalette.darkTextPrimary,
        error: ColorPalette.error,
        onError: ColorPalette.textInverse,
      );

  static AppBarTheme _buildAppBarTheme({
    required TextTheme textTheme,
    required ColorScheme colorScheme,
    required bool isDark,
  }) {
    return AppBarTheme(
      backgroundColor: isDark
          ? ColorPalette.darkBackground
          : ColorPalette.background,
      foregroundColor: colorScheme.onSurface,
      elevation: 0,
      surfaceTintColor: Colors.transparent,
      iconTheme: IconThemeData(color: colorScheme.onSurface),
      titleTextStyle: textTheme.titleMedium?.copyWith(
        color: colorScheme.onSurface,
      ),
    );
  }

  static InputDecorationTheme _buildInputDecorationTheme({
    required bool isDark,
  }) {
    final fillColor = isDark
        ? ColorPalette.darkSurfaceAlt
        : ColorPalette.surface;
    final enabledBorderColor = isDark
        ? ColorPalette.darkBorder
        : ColorPalette.border;

    return InputDecorationTheme(
      filled: true,
      fillColor: fillColor,
      hintStyle: AppTypography.style(
        size: AppFontSizes.label,
        color: isDark ? ColorPalette.darkTextMuted : ColorPalette.textMuted,
      ),
      contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
      border: _inputBorder(enabledBorderColor),
      enabledBorder: _inputBorder(enabledBorderColor),
      focusedBorder: _inputBorder(ColorPalette.focus),
      errorBorder: _inputBorder(ColorPalette.error),
      focusedErrorBorder: _inputBorder(ColorPalette.error),
      disabledBorder: _inputBorder(
        isDark ? ColorPalette.darkBorder : ColorPalette.surfaceMuted,
      ),
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
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
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
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
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
        foregroundColor: ColorPalette.accent,
        textStyle: textTheme.labelMedium?.copyWith(
          fontWeight: AppFontWeights.medium,
        ),
      ),
    );
  }

  static CheckboxThemeData _buildCheckboxTheme() {
    return CheckboxThemeData(
      fillColor: const WidgetStatePropertyAll(ColorPalette.accent),
      checkColor: const WidgetStatePropertyAll(ColorPalette.onAccent),
      side: const BorderSide(color: ColorPalette.borderStrong),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.r)),
    );
  }

  static DialogThemeData _buildDialogTheme({
    required TextTheme textTheme,
    required bool isDark,
  }) {
    return DialogThemeData(
      backgroundColor: isDark ? ColorPalette.darkSurface : ColorPalette.surface,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.r)),
      titleTextStyle: textTheme.titleSmall,
      contentTextStyle: textTheme.labelMedium?.copyWith(
        color: isDark ? ColorPalette.darkTextMuted : ColorPalette.textSecondary,
      ),
    );
  }

  static DatePickerThemeData _buildDatePickerTheme({
    required TextTheme textTheme,
    required ColorScheme colorScheme,
    required bool isDark,
  }) {
    return DatePickerThemeData(
      backgroundColor: isDark ? ColorPalette.darkSurface : ColorPalette.surface,
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
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.r)),
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
      borderRadius: BorderRadius.circular(8.r),
      borderSide: BorderSide(color: borderColor),
    );
  }
}
