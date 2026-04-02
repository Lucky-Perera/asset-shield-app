import 'package:asset_shield/core/theme/schedule_styles.dart';
import 'package:asset_shield/core/theme/schedule_theme.dart';
import 'package:asset_shield/features/home/data/models/schedule_v2_response.dart';
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
      borderRadius: BorderRadius.circular(scheduleTheme.detailCardRadius.r),
      child: ScheduleSurfaceCard(
        margin: EdgeInsets.symmetric(horizontal: 24.w, vertical: 9.h),
        padding: EdgeInsets.fromLTRB(18.w, 18.h, 18.w, 18.h),
        radius: scheduleTheme.detailCardRadius,
        boxShadow: [scheduleTheme.cardShadow(opacity: 0.26)],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: _InfoLine(
                    label: 'S.I. :',
                    value: schedule.scheduleName,
                  ),
                ),
                SizedBox(width: 12.w),
                RecordStatusPill(status: schedule.record?.status),
              ],
            ),
            SizedBox(height: 18.h),
            _InfoLine(label: 'E.I. :', value: schedule.equipmentId),
          ],
        ),
      ),
    );
  }
}

class _InfoLine extends StatelessWidget {
  final String label;
  final String value;

  const _InfoLine({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return RichText(
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      text: TextSpan(
        children: [
          TextSpan(text: '$label ', style: ScheduleTextStyles.caption(context)),
          TextSpan(
            text: value,
            style: ScheduleTextStyles.caption(
              context,
            ).copyWith(fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
