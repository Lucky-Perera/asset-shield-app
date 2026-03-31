import 'package:asset_shield/core/theme/app_tokens.dart';
import 'package:asset_shield/core/theme/schedule_styles.dart';
import 'package:asset_shield/core/theme/schedule_theme.dart';
import 'package:asset_shield/features/common/widgets/schedule_form_primitives.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchHeader extends StatelessWidget {
  final bool isSearching;
  final TextEditingController searchController;
  final VoidCallback onToggleSearch;
  final VoidCallback onRefresh;
  final ValueChanged<String> onSearchChanged;

  const SearchHeader({
    super.key,
    required this.isSearching,
    required this.searchController,
    required this.onToggleSearch,
    required this.onRefresh,
    required this.onSearchChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(24.w, 18.h, 24.w, 14.h),
      child: isSearching ? _buildSearchField(context) : _buildHeader(context),
    );
  }

  Widget _buildSearchField(BuildContext context) {
    final scheduleTheme = context.scheduleTheme;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: TextField(
            controller: searchController,
            autofocus: true,
            style: ScheduleTextStyles.value(context),
            decoration: ScheduleFormDecorations.search(
              context,
              hintText: 'Search by Schedule ID...',
            ),
            onChanged: onSearchChanged,
          ),
        ),
        SizedBox(width: 8.w),
        IconButton(
          icon: Icon(
            Icons.close_rounded,
            size: AppSizes.actionIcon.sp,
            color: scheduleTheme.icon,
          ),
          onPressed: onToggleSearch,
        ),
      ],
    );
  }

  Widget _buildHeader(BuildContext context) {
    final scheduleTheme = context.scheduleTheme;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text('Schedules', style: ScheduleTextStyles.title(context)),
        Row(
          children: [
            IconButton(
              icon: Icon(
                Icons.search_rounded,
                size: AppSizes.actionIcon.sp,
                color: scheduleTheme.icon,
              ),
              onPressed: onToggleSearch,
            ),
            IconButton(
              icon: Icon(
                Icons.autorenew_rounded,
                size: AppSizes.actionIcon.sp,
                color: scheduleTheme.icon,
              ),
              onPressed: onRefresh,
            ),
            IconButton(
              icon: Icon(
                Icons.menu_rounded,
                size: AppSizes.actionIcon.sp,
                color: scheduleTheme.icon,
              ),
              onPressed: () {
                Scaffold.of(context).openEndDrawer();
              },
            ),
          ],
        ),
      ],
    );
  }
}
