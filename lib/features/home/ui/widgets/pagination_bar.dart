import 'package:asset_shield/core/theme/app_tokens.dart';
import 'package:asset_shield/core/theme/schedule_styles.dart';
import 'package:asset_shield/core/theme/schedule_theme.dart';
import 'package:asset_shield/features/home/ui/widgets/schedule_ui/schedule_surface.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PaginationBar extends StatelessWidget {
  final int currentPage;
  final int totalPages;
  final Function(int) onPageChanged;

  const PaginationBar({
    super.key,
    required this.currentPage,
    required this.totalPages,
    required this.onPageChanged,
  });

  @override
  Widget build(BuildContext context) {
    return ScheduleBottomBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Previous button
          _PaginationButton(
            icon: Icons.arrow_back_ios,
            isEnabled: currentPage > 1,
            onPressed: currentPage > 1
                ? () => onPageChanged(currentPage - 1)
                : null,
          ),
          SizedBox(width: 8.w),
          // Page numbers
          Flexible(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: _buildPageNumbers(context),
              ),
            ),
          ),
          SizedBox(width: 8.w),
          // Next button
          _PaginationButton(
            icon: Icons.arrow_forward_ios,
            isEnabled: currentPage < totalPages,
            onPressed: currentPage < totalPages
                ? () => onPageChanged(currentPage + 1)
                : null,
          ),
        ],
      ),
    );
  }

  List<Widget> _buildPageNumbers(BuildContext context) {
    final scheduleTheme = context.scheduleTheme;
    List<Widget> pages = [];

    // Always show first page
    if (totalPages > 0) {
      pages.add(
        _PageNumberButton(
          pageNumber: 1,
          isActive: currentPage == 1,
          onPressed: () => onPageChanged(1),
        ),
      );
    }

    // Calculate range for middle pages
    int startPage = currentPage - 1;
    int endPage = currentPage + 1;

    // Adjust range if near the beginning or end
    if (startPage < 2) {
      startPage = 2;
      endPage = startPage + 2;
    }
    if (endPage > totalPages - 1) {
      endPage = totalPages - 1;
      startPage = endPage - 2;
    }
    if (startPage < 2) startPage = 2;

    // Add ellipsis if there's a gap after first page
    if (startPage > 2) {
      pages.add(SizedBox(width: 4.w));
      pages.add(
        Text(
          '...',
          style: ScheduleTextStyles.value(
            context,
            color: scheduleTheme.secondaryText,
          ),
        ),
      );
      pages.add(SizedBox(width: 4.w));
    }

    // Add middle pages
    for (int i = startPage; i <= endPage && i < totalPages; i++) {
      pages.add(SizedBox(width: 4.w));
      pages.add(
        _PageNumberButton(
          pageNumber: i,
          isActive: currentPage == i,
          onPressed: () => onPageChanged(i),
        ),
      );
    }

    // Add ellipsis if there's a gap before last page
    if (endPage < totalPages - 1) {
      pages.add(SizedBox(width: 4.w));
      pages.add(
        Text(
          '...',
          style: ScheduleTextStyles.value(
            context,
            color: scheduleTheme.secondaryText,
          ),
        ),
      );
      pages.add(SizedBox(width: 4.w));
    }

    // Always show last page if there's more than one page
    if (totalPages > 1) {
      pages.add(SizedBox(width: 4.w));
      pages.add(
        _PageNumberButton(
          pageNumber: totalPages,
          isActive: currentPage == totalPages,
          onPressed: () => onPageChanged(totalPages),
        ),
      );
    }

    return pages;
  }
}

class _PageNumberButton extends StatelessWidget {
  final int pageNumber;
  final bool isActive;
  final VoidCallback onPressed;

  const _PageNumberButton({
    required this.pageNumber,
    required this.isActive,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final scheduleTheme = context.scheduleTheme;

    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: AppSizes.paginationControl.w,
        height: AppSizes.paginationControl.h,
        constraints: BoxConstraints(
          minWidth: AppSizes.paginationControl.w,
          minHeight: AppSizes.paginationControl.h,
        ),
        decoration: BoxDecoration(
          color: isActive
              ? scheduleTheme.paginationActive
              : scheduleTheme.cardBackground,
          borderRadius: BorderRadius.circular(scheduleTheme.radius.r),
          border: Border.all(
            color: isActive
                ? scheduleTheme.paginationActive
                : scheduleTheme.paginationInactiveBorder,
            width: 1,
          ),
        ),
        alignment: Alignment.center,
        child: Text(
          pageNumber.toString(),
          style: ScheduleTextStyles.value(
            context,
            color: isActive
                ? scheduleTheme.cardBackground
                : scheduleTheme.primaryText,
            weight: isActive ? FontWeight.w600 : FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

class _PaginationButton extends StatelessWidget {
  final IconData icon;
  final bool isEnabled;
  final VoidCallback? onPressed;

  const _PaginationButton({
    required this.icon,
    required this.isEnabled,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final scheduleTheme = context.scheduleTheme;

    return GestureDetector(
      onTap: isEnabled ? onPressed : null,
      child: Container(
        width: AppSizes.paginationControl.w,
        height: AppSizes.paginationControl.h,
        constraints: BoxConstraints(
          minWidth: AppSizes.paginationControl.w,
          minHeight: AppSizes.paginationControl.h,
        ),
        decoration: BoxDecoration(
          color: scheduleTheme.cardBackground,
          borderRadius: BorderRadius.circular(scheduleTheme.radius.r),
          border: Border.all(
            color: isEnabled
                ? scheduleTheme.paginationInactiveBorder
                : scheduleTheme.paginationDisabled,
            width: 1,
          ),
        ),
        alignment: Alignment.center,
        child: Icon(
          icon,
          size: 24.sp,
          color: isEnabled
              ? scheduleTheme.primaryText
              : scheduleTheme.paginationDisabled,
        ),
      ),
    );
  }
}
