import 'package:asset_shield/core/enums/enums.dart';
import 'package:asset_shield/features/home/data/models/schedule_v2_response.dart';
import 'package:asset_shield/features/home/ui/widgets/schedule_details/schedule_details_card.dart';
import 'package:asset_shield/features/home/ui/widgets/schedule_ui/schedule_surface.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScheduleInfoCard extends StatelessWidget {
  final ScheduleV2Response schedule;

  const ScheduleInfoCard({super.key, required this.schedule});

  @override
  Widget build(BuildContext context) {
    return ScheduleDetailsCard(
      padding: EdgeInsets.fromLTRB(24.w, 24.h, 24.w, 8.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ScheduleSectionTitle(title: 'Schedule Information'),
          SizedBox(height: 24.h),
          ScheduleInfoRow(label: 'Schedule ID:', value: schedule.scheduleName),
          ScheduleInfoRow(label: 'Description:', value: schedule.description),
          ScheduleInfoRow(
            label: 'Status:',
            value: schedule.status.displayName,
          ),
          ScheduleInfoRow(
            label: 'Due Date:',
            value:
                '${schedule.dueDate.day}/${schedule.dueDate.month}/${schedule.dueDate.year}',
          ),
          if (schedule.equipment?.name != null)
            ScheduleInfoRow(
              label: 'Equipment:',
              value: schedule.equipment!.name,
              padding: EdgeInsets.only(bottom: 16.h),
            ),
        ],
      ),
    );
  }

}
