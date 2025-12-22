import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:asset_shield/core/theme/color_palette.dart';

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
    return Padding(
      padding: EdgeInsets.only(bottom: 4.h),
      child: Row(
        children: [
          Icon(
            icon,
            size: 16.sp,
            color: isViewable ? ColorPalette.primary : ColorPalette.primary,
          ),
          SizedBox(width: 6.w),
          Expanded(
            child: InkWell(
              onTap: onTap,
              child: Text(
                fileName,
                style: TextStyle(
                  fontSize: 12.sp,
                  color: isViewable ? ColorPalette.primary : ColorPalette.black,
                  decoration: isViewable ? TextDecoration.underline : null,
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
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
                    ),
                  )
                : IconButton(
                    icon: Icon(
                      Icons.delete_outline,
                      size: 18.sp,
                      color: Colors.red,
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
