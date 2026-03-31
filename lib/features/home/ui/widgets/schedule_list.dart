import 'package:asset_shield/core/routes/router.dart';
import 'package:asset_shield/core/theme/schedule_styles.dart';
import 'package:asset_shield/core/theme/schedule_theme.dart';
import 'package:asset_shield/features/home/data/models/schedule_v2_response.dart';
import 'package:asset_shield/features/home/ui/widgets/schedule_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScheduleList extends StatelessWidget {
  final List<ScheduleV2Response> schedules;
  final String searchQuery;
  final VoidCallback onRefresh;

  const ScheduleList({
    super.key,
    required this.schedules,
    required this.searchQuery,
    required this.onRefresh,
  });

  List<ScheduleV2Response> get _filteredSchedules {
    if (searchQuery.isEmpty) return schedules;
    return schedules
        .where(
          (schedule) =>
              schedule.scheduleName.toLowerCase().contains(searchQuery),
        )
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    final filtered = _filteredSchedules;
    final scheduleTheme = context.scheduleTheme;

    if (filtered.isEmpty) {
      return _buildEmptyState(context, scheduleTheme);
    }

    return Column(
      children: [
        Expanded(
          child: RefreshIndicator(
            onRefresh: () async => onRefresh(),
            child: ListView.builder(
              itemCount: filtered.length,
              padding: EdgeInsets.fromLTRB(0, 6.h, 0, 18.h),
              itemBuilder: (context, index) {
                final schedule = filtered[index];
                return ScheduleItem(
                  schedule: schedule,
                  onTap: () {
                    Routes().scheduleDetails(schedule);
                  },
                );
              },
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildEmptyState(
    BuildContext context,
    ScheduleThemeData scheduleTheme,
  ) {
    return Center(
      child: Text(
        searchQuery.isEmpty
            ? 'No schedules available'
            : 'No schedules found matching "$searchQuery"',
        style: ScheduleTextStyles.value(
          context,
          color: scheduleTheme.secondaryText,
        ),
      ),
    );
  }
}
