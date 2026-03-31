import 'package:asset_shield/core/theme/app_tokens.dart';
import 'package:asset_shield/core/theme/app_typography.dart';
import 'package:asset_shield/features/home/data/models/schedule_v2_response.dart';
import 'package:asset_shield/core/theme/schedule_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:asset_shield/core/theme/color_palette.dart';

/// A single component tile used inside schedule forms, dialogs, lists.
/// Displays component name, code, and optional metadata.
class ScheduleComponentWidget extends StatelessWidget {
  final ScheduleComponent component;
  final bool isSelected;
  final VoidCallback? onTap;

  const ScheduleComponentWidget({
    super.key,
    required this.component,
    this.isSelected = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final scheduleTheme = context.scheduleTheme;

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(AppRadii.sm.r),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 12.h),
        decoration: BoxDecoration(
          color: isSelected ? ColorPalette.surfaceMuted : ColorPalette.surface,
          borderRadius: BorderRadius.circular(AppRadii.sm.r),
          border: Border.all(
            color: isSelected ? ColorPalette.primary : ColorPalette.border,
            width: isSelected ? AppStrokes.emphasis : AppStrokes.regular,
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Leading bullet or checkmark
            Icon(
              isSelected ? Icons.check_circle : Icons.circle_outlined,
              size: 20.sp,
              color: isSelected
                  ? ColorPalette.primary
                  : scheduleTheme.secondaryText,
            ),
            SizedBox(width: 12.w),

            /// Component info
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// Component name
                  Text(
                    component.component.name,
                    style: AppTypography.style(
                      size: AppFontSizes.label,
                      weight: AppFontWeights.semiBold,
                      color: scheduleTheme.primaryText,
                    ),
                  ),

                  SizedBox(height: 4.h),

                  /// Component code
                  Text(
                    '(${component.id})',
                    style: AppTypography.style(
                      size: AppFontSizes.caption,
                      color: scheduleTheme.secondaryText,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
