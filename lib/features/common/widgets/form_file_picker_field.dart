import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/theme/color_palette.dart';

/// A reusable file picker field widget with consistent styling
class FormFilePickerField extends StatelessWidget {
  final String label;
  final List<File> selectedFiles;
  final VoidCallback onSelectFiles;
  final VoidCallback? onUpload;
  final bool isRequired;

  const FormFilePickerField({
    super.key,
    required this.label,
    required this.selectedFiles,
    required this.onSelectFiles,
    this.onUpload,
    this.isRequired = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            style: TextStyle(
              fontSize: 14.sp,
              color: ColorPalette.black,
              fontWeight: FontWeight.w500,
            ),
            children: [
              if (isRequired)
                const TextSpan(
                  text: '* ',
                  style: TextStyle(color: Colors.red),
                ),
              TextSpan(text: label),
            ],
          ),
        ),
        SizedBox(height: 8.h),
        Row(
          children: [
            OutlinedButton(
              onPressed: onSelectFiles,
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: ColorPalette.grey300),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.r),
                ),
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 12.h),
              ),
              child: Text(
                'Select Files',
                style: TextStyle(color: ColorPalette.black, fontSize: 14.sp),
              ),
            ),
            if (onUpload != null) ...[SizedBox(width: 12.w)],
          ],
        ),
        SizedBox(height: 12.h),
        Text(
          selectedFiles.isEmpty
              ? 'No files'
              : '${selectedFiles.length} file(s) selected',
          style: TextStyle(fontSize: 13.sp, color: ColorPalette.grey500),
        ),
        if (selectedFiles.isNotEmpty) ...[
          SizedBox(height: 8.h),
          ...selectedFiles.map(
            (file) => Padding(
              padding: EdgeInsets.only(bottom: 4.h),
              child: Text(
                '• ${file.path.split('/').last}',
                style: TextStyle(fontSize: 12.sp, color: ColorPalette.grey600),
              ),
            ),
          ),
        ],
      ],
    );
  }
}
