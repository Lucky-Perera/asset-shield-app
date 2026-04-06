import 'package:asset_shield/core/theme/schedule_theme.dart';
import 'package:asset_shield/features/home/data/models/schedule_v2_response.dart';
import 'package:asset_shield/features/home/ui/widgets/info_line.dart';
import 'package:asset_shield/features/home/ui/widgets/record_status_pill.dart';
import 'package:asset_shield/features/home/ui/widgets/schedule_ui/schedule_surface.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScheduleItem extends StatelessWidget {
  final ScheduleV2Response schedule;
  final VoidCallback? onTap;

  const ScheduleItem({super.key, required this.schedule, this.onTap});

  @override
  Widget build(BuildContext context) {
    final scheduleTheme = context.scheduleTheme;

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(scheduleTheme.radius.r),
      child: ScheduleSurfaceCard(
        margin: EdgeInsets.symmetric(horizontal: 24.w, vertical: 4.h),
        padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 8.h),
        radius: scheduleTheme.radius,
        boxShadow: [scheduleTheme.cardShadow(opacity: 0.26)],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: InfoLine(
                    label: 'S.I. :',
                    value: schedule.scheduleName,
                  ),
                ),
                SizedBox(width: 12.w),
                RecordStatusPill(status: schedule.record?.status),
              ],
            ),
            SizedBox(height: 8.h),
            InfoLine(label: 'E.I. :', value: schedule.equipmentId),
          ],
        ),
      ),
    );
  }
}

