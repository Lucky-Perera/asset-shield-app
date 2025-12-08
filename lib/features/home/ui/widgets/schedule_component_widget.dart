import 'package:asset_shield/features/home/data/models/schedule_v2_response.dart';
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
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8.r),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 12.h),
        decoration: BoxDecoration(
          color: isSelected ? ColorPalette.grey200 : ColorPalette.white,
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(
            color: isSelected ? ColorPalette.primary : ColorPalette.grey300,
            width: isSelected ? 1.4 : 1,
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Leading bullet or checkmark
            Icon(
              isSelected ? Icons.check_circle : Icons.circle_outlined,
              size: 20.sp,
              color: isSelected ? ColorPalette.primary : ColorPalette.grey400,
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
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                      color: ColorPalette.black,
                    ),
                  ),

                  SizedBox(height: 4.h),

                  /// Component code
                  Text(
                    '(${component.id})',
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: ColorPalette.grey600,
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
