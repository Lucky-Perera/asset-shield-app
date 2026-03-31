import 'package:asset_shield/core/theme/app_typography.dart';
import 'package:asset_shield/core/theme/app_tokens.dart';
import 'package:asset_shield/core/theme/schedule_theme.dart';
import 'package:flutter/material.dart';

class ScheduleRadii {
  const ScheduleRadii._();

  static const double card = AppRadii.xxl;
  static const double badge = AppRadii.md;
  static const double panel = AppRadii.lg;
}

class ScheduleTextStyles {
  const ScheduleTextStyles._();

  static TextStyle title(
    BuildContext context, {
    Color? color,
    double size = AppFontSizes.body,
  }) => AppTypography.style(
    size: size,
    weight: AppFontWeights.title,
    color: color ?? context.scheduleTheme.primaryText,
    height: 1.15,
  );

  static TextStyle label(
    BuildContext context, {
    Color? color,
    double size = AppFontSizes.body,
  }) => AppTypography.style(
    size: size,
    weight: AppFontWeights.label,
    color: color ?? context.scheduleTheme.primaryText,
    height: 1.25,
  );

  static TextStyle value(
    BuildContext context, {
    Color? color,
    FontWeight weight = AppFontWeights.value,
    double size = AppFontSizes.body,
  }) => AppTypography.style(
    size: size,
    weight: weight,
    color: color ?? context.scheduleTheme.primaryText,
    height: 1.25,
  );

  static TextStyle hint(
    BuildContext context, {
    Color? color,
    double size = AppFontSizes.body,
  }) => AppTypography.style(
    size: size,
    weight: AppFontWeights.value,
    color: color ?? context.scheduleTheme.secondaryText,
    height: 1.2,
  );

  static TextStyle caption(
    BuildContext context, {
    Color? color,
    double size = AppFontSizes.caption,
  }) => AppTypography.style(
    size: size,
    weight: AppFontWeights.label,
    color: color ?? context.scheduleTheme.primaryText,
    height: 1.15,
  );
}
