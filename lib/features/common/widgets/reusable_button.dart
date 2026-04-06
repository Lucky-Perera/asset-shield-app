import 'package:asset_shield/core/theme/schedule_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/theme/app_text_styles.dart';

enum ButtonVariant { primary, secondary, ghost }

/// A reusable button widget that pulls styling from [ScheduleThemeData].
/// Use [variant] to switch between primary, secondary, and ghost styles.
class ReusableButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final ButtonVariant variant;
  final bool isLoading;
  final double? width;

  const ReusableButton({
    super.key,
    required this.text,
    this.onPressed,
    this.variant = ButtonVariant.primary,
    this.isLoading = false,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    final scheduleTheme = context.scheduleTheme;

    Color backgroundColor;
    Color foregroundColor;
    Color? borderColor;
    double? elevation;

    switch (variant) {
      case ButtonVariant.primary:
        backgroundColor = scheduleTheme.paginationActive;
        foregroundColor = scheduleTheme.cardBackground;
        borderColor = null;
        elevation = 0;
      case ButtonVariant.secondary:
        backgroundColor = scheduleTheme.draftButtonBackground;
        foregroundColor = scheduleTheme.draftButtonText;
        borderColor = scheduleTheme.cardBorder.withValues(alpha: 0.5);
        elevation = 0;
      case ButtonVariant.ghost:
        backgroundColor = scheduleTheme.cardBackground;
        foregroundColor = scheduleTheme.ghostButtonText;
        borderColor = scheduleTheme.cardBorder;
        elevation = 0;
    }

    final resolvedWidth =
        width == null || width == double.infinity ? double.infinity : width!.w;

    return SizedBox(
      width: resolvedWidth,
      height: 52.h,
      child: ElevatedButton(
        onPressed: isLoading ? null : onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          foregroundColor: foregroundColor,
          elevation: elevation,
          disabledBackgroundColor: backgroundColor.withValues(alpha: 0.5),
          disabledForegroundColor: foregroundColor.withValues(alpha: 0.5),
          side:
              borderColor != null ? BorderSide(color: borderColor, width: 1) : null,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(scheduleTheme.radius.r),
          ),
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        ),
        child: isLoading
            ? SizedBox(
                width: 20.r,
                height: 20.r,
                child: CircularProgressIndicator(
                  strokeWidth: 2.w,
                  valueColor: AlwaysStoppedAnimation<Color>(foregroundColor),
                ),
              )
            : FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  text,
                  maxLines: 1,
                  style: context.appTextTheme.titleSmall!.copyWith(
                    color: foregroundColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
      ),
    );
  }
}