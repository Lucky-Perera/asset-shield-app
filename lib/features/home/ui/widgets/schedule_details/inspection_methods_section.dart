import 'package:asset_shield/core/theme/schedule_styles.dart';
import 'package:asset_shield/core/theme/schedule_theme.dart';
import 'package:asset_shield/features/home/data/models/schedule_v2_response.dart';
import 'package:asset_shield/features/home/ui/widgets/schedule_details/schedule_details_card.dart';
import 'package:asset_shield/features/home/ui/widgets/schedule_ui/schedule_surface.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InspectionMethodsSection extends StatelessWidget {
  final List<InspectionMethodV2> inspectionMethods;

  const InspectionMethodsSection({super.key, required this.inspectionMethods});

  @override
  Widget build(BuildContext context) {
    return ScheduleDetailsCard(
      padding: EdgeInsets.fromLTRB(24.w, 24.h, 24.w, 24.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _SectionHeaderWithCount(
            title: 'Inspection Methods',
            count: inspectionMethods.length,
          ),
          SizedBox(height: 18.h),
          if (inspectionMethods.isEmpty)
            const _EmptyMessage(message: 'No inspection methods available')
          else
            ...List.generate(
              inspectionMethods.length,
              (index) => Padding(
                padding: EdgeInsets.only(
                  bottom: index == inspectionMethods.length - 1 ? 0 : 14.h,
                ),
                child: _InspectionMethodCard(
                  method: inspectionMethods[index],
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

class _InspectionMethodCard extends StatelessWidget {
  final InspectionMethodV2 method;
  final int index;

  const _InspectionMethodCard({required this.method, required this.index});

  @override
  Widget build(BuildContext context) {
    final scheduleTheme = context.scheduleTheme;

    return ScheduleDetailsCard(
      padding: EdgeInsets.fromLTRB(24.w, 24.h, 24.w, 12.h),
      boxShadow: const [],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              ScheduleBadge(
                label: '#$index',
                backgroundColor: scheduleTheme.indexBadgeTone.background,
                foregroundColor: scheduleTheme.indexBadgeTone.foreground,
                variant: ScheduleBadgeVariant.detailIndex,
              ),
              SizedBox(width: 14.w),
              Expanded(
                child: Text(
                  method.method?.value ?? 'N/A',
                  style: ScheduleTextStyles.caption(
                    context,
                  ).copyWith(fontWeight: FontWeight.w700),
                ),
              ),
            ],
          ),
          SizedBox(height: 20.h),
          ScheduleInfoRow(label: 'Location:', value: method.location ?? 'N/A'),
          ScheduleInfoRow(
            label: 'Special Access:',
            value: method.specialAccess?.value ?? 'N/A',
          ),
          ScheduleInfoRow(
            label: 'Insulation Removal:',
            value: method.insulationRemoval?.value ?? 'N/A',
          ),
          ScheduleInfoRow(
            label: 'Cleaning:',
            value: method.cleaning?.value ?? 'N/A',
            padding: EdgeInsets.only(
              bottom: method.notes == null ? 16.h : 12.h,
            ),
          ),
          if (method.notes != null && method.notes!.isNotEmpty)
            ScheduleInfoRow(
              label: 'Notes:',
              value: method.notes!,
              padding: EdgeInsets.only(bottom: 16.h),
            ),
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
