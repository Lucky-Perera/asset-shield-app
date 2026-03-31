import 'package:asset_shield/core/theme/color_palette.dart';
import 'package:asset_shield/core/theme/app_typography.dart';
import 'package:asset_shield/core/theme/app_tokens.dart';
import 'package:asset_shield/core/theme/schedule_styles.dart';
import 'package:asset_shield/core/theme/schedule_theme.dart';
import 'package:asset_shield/core/theme/theme_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScheduleFieldSection extends StatelessWidget {
  final String label;
  final bool isRequired;
  final Widget child;

  const ScheduleFieldSection({
    super.key,
    required this.label,
    required this.child,
    this.isRequired = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            children: [
              buildFormFieldLabel(
                label: label,
                style: ScheduleTextStyles.value(
                  context,
                  size: AppFontSizes.caption,
                ),
                isRequired: isRequired,
              ),
            ],
          ),
        ),
        SizedBox(height: 10.h),
        child,
      ],
    );
  }
}

class ScheduleFormDecorations {
  const ScheduleFormDecorations._();

  static InputDecoration input(
    BuildContext context, {
    String? hintText,
    bool enabled = true,
    Widget? suffixIcon,
    EdgeInsetsGeometry? contentPadding,
  }) {
    final scheduleTheme = context.scheduleTheme;

    return InputDecoration(
      hintText: hintText,
      hintStyle: ScheduleTextStyles.hint(context, size: AppFontSizes.caption),
      filled: true,
      fillColor: enabled
          ? scheduleTheme.cardBackground
          : scheduleTheme.fieldDisabledBackground,
      enabledBorder: _border(context),
      focusedBorder: _border(context, width: AppStrokes.emphasis),
      border: _border(context),
      disabledBorder: _border(context),
      errorBorder: _border(context, color: ColorPalette.error),
      focusedErrorBorder: _border(
        context,
        color: ColorPalette.error,
        width: AppStrokes.emphasis,
      ),
      contentPadding:
          contentPadding ??
          EdgeInsets.symmetric(horizontal: 16.w, vertical: 15.h),
      suffixIcon: suffixIcon,
    );
  }

  static InputDecoration search(
    BuildContext context, {
    required String hintText,
  }) {
    final scheduleTheme = context.scheduleTheme;

    return InputDecoration(
      hintText: hintText,
      hintStyle: ScheduleTextStyles.hint(context),
      filled: true,
      fillColor: scheduleTheme.cardBackground,
      border: _border(context, radius: scheduleTheme.searchRadius),
      focusedBorder: _border(
        context,
        radius: scheduleTheme.searchRadius,
        width: AppStrokes.emphasis,
      ),
      enabledBorder: _border(context, radius: scheduleTheme.searchRadius),
      contentPadding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 14.h),
    );
  }

  static BoxDecoration container(
    BuildContext context, {
    bool enabled = true,
    bool hasError = false,
  }) {
    final scheduleTheme = context.scheduleTheme;

    return BoxDecoration(
      color: enabled
          ? scheduleTheme.cardBackground
          : scheduleTheme.fieldDisabledBackground,
      borderRadius: BorderRadius.circular(scheduleTheme.fieldRadius.r),
      border: Border.all(
        color: hasError ? ColorPalette.error : scheduleTheme.cardBorder,
        width: AppStrokes.regular,
      ),
    );
  }

  static OutlineInputBorder _border(
    BuildContext context, {
    Color? color,
    double width = AppStrokes.regular,
    double? radius,
  }) {
    final scheduleTheme = context.scheduleTheme;

    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(
        (radius ?? scheduleTheme.fieldRadius).r,
      ),
      borderSide: BorderSide(
        color: color ?? scheduleTheme.cardBorder,
        width: width,
      ),
    );
  }
}
