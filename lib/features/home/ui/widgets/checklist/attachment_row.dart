import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:asset_shield/core/theme/schedule_styles.dart';
import 'package:asset_shield/core/theme/schedule_theme.dart';

typedef VoidStringCallback = void Function(String id, String name);

class AttachmentRow extends StatelessWidget {
  final IconData icon;
  final String fileName;
  final bool isViewable;
  final bool isDeleting;
  final bool showDelete;
  final VoidCallback? onTap;
  final VoidStringCallback? onDelete;
  final String id;

  const AttachmentRow({
    super.key,
    required this.icon,
    required this.fileName,
    required this.id,
    this.isViewable = false,
    this.isDeleting = false,
    this.showDelete = true,
    this.onTap,
    this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    final scheduleTheme = context.scheduleTheme;

    return Padding(
      padding: EdgeInsets.only(bottom: 4.h),
      child: Row(
        children: [
          Icon(
            icon,
            size: 18.sp,
            color: isViewable
                ? scheduleTheme.draftTone.foreground
                : scheduleTheme.secondaryText,
          ),
          SizedBox(width: 8.w),
          Expanded(
            child: InkWell(
              onTap: onTap,
              child: Text(
                fileName,
                style: ScheduleTextStyles.caption(
                  context,
                  color: isViewable
                      ? scheduleTheme.draftTone.foreground
                      : scheduleTheme.primaryText,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          if (showDelete && onDelete != null)
            isDeleting
                ? SizedBox(
                    width: 16.sp,
                    height: 16.sp,
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                      valueColor: AlwaysStoppedAnimation<Color>(
                        scheduleTheme.rejectedTone.foreground,
                      ),
                    ),
                  )
                : IconButton(
                    iconSize: 18.sp,
                    icon: Icon(
                      Icons.delete_outline,
                      color: scheduleTheme.rejectedTone.foreground,
                    ),
                    padding: EdgeInsets.zero,
                    constraints: const BoxConstraints(),
                    onPressed: () => onDelete!(id, fileName),
                  ),
        ],
      ),
    );
  }
}
