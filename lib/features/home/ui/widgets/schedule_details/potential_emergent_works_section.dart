import 'package:asset_shield/core/theme/schedule_styles.dart';
import 'package:asset_shield/core/theme/schedule_theme.dart';
import 'package:asset_shield/features/home/data/models/schedule_v2_response.dart';
import 'package:asset_shield/features/home/ui/widgets/schedule_details/schedule_details_card.dart';
import 'package:asset_shield/features/home/ui/widgets/schedule_ui/schedule_surface.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PotentialEmergentWorksSection extends StatelessWidget {
  final List<PotentialEmergentWorkV2> potentialEmergentWorks;

  const PotentialEmergentWorksSection({
    super.key,
    required this.potentialEmergentWorks,
  });

  @override
  Widget build(BuildContext context) {
    return ScheduleDetailsCard(
      padding: EdgeInsets.fromLTRB(24.w, 24.h, 24.w, 24.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _SectionHeaderWithCount(
            title: 'Potential Emergent Works',
            count: potentialEmergentWorks.length,
          ),
          SizedBox(height: 18.h),
          if (potentialEmergentWorks.isEmpty)
            const _EmptyMessage(message: 'No potential emergent works')
          else
            ...List.generate(
              potentialEmergentWorks.length,
              (index) => Padding(
                padding: EdgeInsets.only(
                  bottom: index == potentialEmergentWorks.length - 1 ? 0 : 14.h,
                ),
                child: _EmergentWorkCard(
                  work: potentialEmergentWorks[index],
                  index: index + 1,
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class _SectionHeaderWithCount extends StatelessWidget {
  final String title;
  final int count;

  const _SectionHeaderWithCount({required this.title, required this.count});

  @override
  Widget build(BuildContext context) {
    final scheduleTheme = context.scheduleTheme;

    return ScheduleSectionTitle(
      title: title,
      trailing: ScheduleBadge(
        label: '$count',
        backgroundColor: scheduleTheme.countBadgeTone.background,
        foregroundColor: scheduleTheme.countBadgeTone.foreground,
        variant: ScheduleBadgeVariant.sectionCount,
      ),
    );
  }
}

class _EmergentWorkCard extends StatelessWidget {
  final PotentialEmergentWorkV2 work;
  final int index;

  const _EmergentWorkCard({required this.work, required this.index});

  @override
  Widget build(BuildContext context) {
    final likelihoodValue = work.likelihood?.value ?? 'N/A';
    final scheduleTheme = context.scheduleTheme;
    final likelihoodTone = scheduleTheme.likelihoodTone(likelihoodValue);

    return ScheduleDetailsCard(
      padding: EdgeInsets.fromLTRB(24.w, 24.h, 24.w, 24.h),
      boxShadow: const [],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              ScheduleBadge(
                label: '#$index',
                backgroundColor: scheduleTheme.rejectedTone.background,
                foregroundColor: scheduleTheme.rejectedTone.foreground,
                variant: ScheduleBadgeVariant.detailIndex,
              ),
              SizedBox(width: 14.w),
              Expanded(
                child: Text(
                  work.potentialEmergentWork?.value ?? 'N/A',
                  style: ScheduleTextStyles.caption(
                    context,
                  ).copyWith(fontWeight: FontWeight.w700),
                ),
              ),
            ],
          ),
          SizedBox(height: 20.h),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Likelihood:', style: ScheduleTextStyles.caption(context)),
              SizedBox(width: 12.w),
              ScheduleBadge(
                label: likelihoodValue,
                backgroundColor: likelihoodTone.background,
                foregroundColor: likelihoodTone.foreground,
                variant: ScheduleBadgeVariant.detailTone,
              ),
            ],
          ),
          if (work.notes != null && work.notes!.isNotEmpty) ...[
            SizedBox(height: 16.h),
            ScheduleInfoRow(
              label: 'Notes:',
              value: work.notes!,
              labelWidth: 86,
              padding: EdgeInsets.zero,
            ),
          ],
        ],
      ),
    );
  }
}

class _EmptyMessage extends StatelessWidget {
  final String message;

  const _EmptyMessage({required this.message});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 12.h),
        child: Text(
          message,
          style: ScheduleTextStyles.caption(
            context,
            color: context.scheduleTheme.secondaryText,
          ),
        ),
      ),
    );
  }
}
