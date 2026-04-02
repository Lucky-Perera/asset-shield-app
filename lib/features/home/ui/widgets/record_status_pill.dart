import 'package:asset_shield/core/enums/enums.dart';
import 'package:asset_shield/core/theme/app_tokens.dart';
import 'package:asset_shield/core/theme/schedule_styles.dart';
import 'package:asset_shield/core/theme/schedule_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecordStatusPill extends StatelessWidget {
  final RecordStatus? status;
  const RecordStatusPill({super.key, this.status});

  @override
  Widget build(BuildContext context) {
    final scheduleTheme = context.scheduleTheme;
    final tone = scheduleTheme.recordStatusTone(status);
    final statusText = switch (status) {
      RecordStatus.approved => 'Approved',
      RecordStatus.pendingApproval => 'Pending Approval',
      RecordStatus.rejected => 'Rejected',
      RecordStatus.draft => 'Draft',
      null => 'No record',
    };

    return DecoratedBox(
      decoration: BoxDecoration(
        color: tone.background,
        borderRadius: BorderRadius.circular(AppRadii.lg.r),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
        child: Text(
          statusText,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: ScheduleTextStyles.caption(context, color: tone.foreground),
        ),
      ),
    );
  }
}
