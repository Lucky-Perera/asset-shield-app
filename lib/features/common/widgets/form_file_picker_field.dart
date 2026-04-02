import 'dart:io';
import 'package:asset_shield/core/theme/app_text_styles.dart';
import 'package:asset_shield/core/theme/color_palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/theme/theme_helpers.dart';

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
            children: [
              buildFormFieldLabel(
                label: label,
                style: context.appTextTheme.labelLarge!,
                isRequired: isRequired,
              ),
            ],
          ),
        ),
        SizedBox(height: 8.h),
        Row(
          children: [
            OutlinedButton(
              onPressed: onSelectFiles,
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: ColorPalette.border),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.r),
                ),
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 12.h),
              ),
              child: const Text('Select Files'),
            ),
            if (onUpload != null) ...[SizedBox(width: 12.w)],
          ],
        ),
        SizedBox(height: 12.h),
        Text(
          selectedFiles.isEmpty
              ? 'No files'
              : '${selectedFiles.length} file(s) selected',
          style: context.appTextTheme.bodySmall!.copyWith(
            color: ColorPalette.textMuted,
          ),
        ),
        if (selectedFiles.isNotEmpty) ...[
          SizedBox(height: 8.h),
          ...selectedFiles.map(
            (file) => Padding(
              padding: EdgeInsets.only(bottom: 4.h),
              child: Text(
                '• ${file.path.split('/').last}',
                style: context.appTextTheme.labelSmall!.copyWith(
                  color: ColorPalette.textSecondary,
                ),
              ),
            ),
          ),
        ],
      ],
    );
  }
}
