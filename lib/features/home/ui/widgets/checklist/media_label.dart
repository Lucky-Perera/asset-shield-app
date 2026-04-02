import 'package:asset_shield/core/theme/app_typography.dart';
import 'package:asset_shield/core/theme/schedule_styles.dart';
import 'package:asset_shield/core/theme/schedule_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MediaLabel extends StatelessWidget {
  final void Function()? onTap;
  const MediaLabel({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    final scheduleTheme = context.scheduleTheme;

    return GestureDetector(
      onTap: onTap,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.image_outlined,
            size: 22.sp,
            color: scheduleTheme.primaryText,
          ),
          SizedBox(width: 8.w),
          Text(
            'Media',
            style: ScheduleTextStyles.value(
              context,
              size: AppFontSizes.caption,
            ),
          ),
        ],
      ),
    );
  }
}
