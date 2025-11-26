import 'package:asset_shield/core/routes/router.dart';
import 'package:asset_shield/core/theme/color_palette.dart';
import 'package:asset_shield/features/home/data/models/schedule_v2_response.dart';
import 'package:asset_shield/features/home/ui/widgets/pagination_bar.dart';
import 'package:asset_shield/features/home/ui/widgets/schedule_item.dart';
import 'package:flutter/material.dart';

class ScheduleList extends StatelessWidget {
  final List<ScheduleV2> schedules;
  final Pagination pagination;
  final String searchQuery;
  final VoidCallback onRefresh;
  final ValueChanged<int> onPageChanged;

  const ScheduleList({
    super.key,
    required this.schedules,
    required this.pagination,
    required this.searchQuery,
    required this.onRefresh,
    required this.onPageChanged,
  });

  List<ScheduleV2> get _filteredSchedules {
    if (searchQuery.isEmpty) return schedules;
    return schedules
        .where(
          (schedule) => schedule.scheduleID.toLowerCase().contains(searchQuery),
        )
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    final filtered = _filteredSchedules;

    if (filtered.isEmpty) {
      return _buildEmptyState();
    }

    return Column(
      children: [
        Expanded(
          child: RefreshIndicator(
            onRefresh: () async => onRefresh(),
            child: ListView.builder(
              itemCount: filtered.length,
              padding: const EdgeInsets.symmetric(vertical: 8),
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
        // Pagination Bar - only show when not searching
        if (searchQuery.isEmpty)
          PaginationBar(
            currentPage: pagination.page,
            totalPages: pagination.totalPages,
            onPageChanged: onPageChanged,
          ),
      ],
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Text(
        searchQuery.isEmpty
            ? 'No schedules available'
            : 'No schedules found matching "$searchQuery"',
        style: const TextStyle(fontSize: 16, color: ColorPalette.grey500),
      ),
    );
  }
}
