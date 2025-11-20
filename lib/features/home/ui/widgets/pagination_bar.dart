import 'package:asset_shield/core/theme/color_palette.dart';
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
    final bottomPadding = MediaQuery.of(context).padding.bottom;

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.w,
        vertical: 12.h,
      ).copyWith(bottom: bottomPadding > 0 ? (12.h + bottomPadding) : 12.h),
      decoration: BoxDecoration(
        color: ColorPalette.white,
        boxShadow: [
          BoxShadow(
            color: ColorPalette.black.withValues(alpha: 0.1),
            blurRadius: 4,
            offset: const Offset(0, -2),
          ),
        ],
      ),
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
                children: _buildPageNumbers(),
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

  List<Widget> _buildPageNumbers() {
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
          style: TextStyle(
            fontSize: 16.sp,
            color: ColorPalette.grey500,
            fontWeight: FontWeight.w500,
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
          style: TextStyle(
            fontSize: 16.sp,
            color: ColorPalette.grey500,
            fontWeight: FontWeight.w500,
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
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 40.w,
        height: 40.h,
        constraints: BoxConstraints(minWidth: 40.w, minHeight: 40.h),
        decoration: BoxDecoration(
          color: isActive ? ColorPalette.black : ColorPalette.white,
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(
            color: isActive ? ColorPalette.black : ColorPalette.grey300,
            width: 1,
          ),
        ),
        alignment: Alignment.center,
        child: Text(
          pageNumber.toString(),
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w600,
            color: isActive ? ColorPalette.white : ColorPalette.black,
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
    return GestureDetector(
      onTap: isEnabled ? onPressed : null,
      child: Container(
        width: 40.w,
        height: 40.h,
        constraints: BoxConstraints(minWidth: 40.w, minHeight: 40.h),
        decoration: BoxDecoration(
          color: ColorPalette.white,
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(
            color: isEnabled ? ColorPalette.grey300 : ColorPalette.grey200,
            width: 1,
          ),
        ),
        alignment: Alignment.center,
        child: Icon(
          icon,
          size: 16.sp,
          color: isEnabled ? ColorPalette.black : ColorPalette.grey300,
        ),
      ),
    );
  }
}
