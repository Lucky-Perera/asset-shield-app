import 'package:asset_shield/features/home/data/models/schedule_v2_response.dart';
import 'package:asset_shield/features/home/ui/widgets/schedule_details/schedule_details_card.dart';
import 'package:asset_shield/features/home/ui/widgets/schedule_ui/schedule_surface.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScopeOverviewCard extends StatelessWidget {
  final ScheduleV2Response schedule;

  const ScopeOverviewCard({super.key, required this.schedule});

  @override
  Widget build(BuildContext context) {
    return ScheduleDetailsCard(
      padding: EdgeInsets.fromLTRB(24.w, 24.h, 24.w, 8.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ScheduleSectionTitle(title: 'Scope Overview'),
          SizedBox(height: 24.h),
          ScheduleInfoRow(
            label: 'Damage Mechanism:',
            value:
                schedule.damageMechanism ??
                'Damage mechanism data not available',
          ),
          ScheduleInfoRow(
            label: 'Inspection Effectiveness:',
            value:
                schedule.inspectionEffectiveness ??
                'Inspection effectiveness data not available',
            padding: EdgeInsets.only(bottom: 16.h),
          ),
        ],
      ),
    );
  }
}
