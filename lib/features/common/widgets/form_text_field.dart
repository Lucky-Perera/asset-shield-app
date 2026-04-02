import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/theme/app_typography.dart';
import '../../../core/theme/schedule_styles.dart';
import '../../../core/theme/schedule_theme.dart';
import 'schedule_form_primitives.dart';

/// A reusable text field widget for forms with consistent styling
class FormTextField extends StatelessWidget {
  final String label;
  final String? hint;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final bool isRequired;
  final int? maxLines;
  final int? minLines;
  final TextInputType? keyboardType;
  final bool enabled;
  final ValueChanged<String>? onChanged;

  const FormTextField({
    super.key,
    required this.label,
    this.hint,
    this.controller,
    this.validator,
    this.isRequired = false,
    this.maxLines = 1,
    this.minLines,
    this.keyboardType,
    this.enabled = true,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final scheduleTheme = context.scheduleTheme;

    return ScheduleFieldSection(
      label: label,
      isRequired: isRequired,
      child: TextFormField(
        controller: controller,
        validator: validator,
        maxLines: maxLines,
        minLines: minLines,
        keyboardType: keyboardType,
        enabled: enabled,
        onChanged: onChanged,
        textAlignVertical: maxLines == 1
            ? TextAlignVertical.center
            : TextAlignVertical.top,
        style: ScheduleTextStyles.value(
          context,
          size: AppFontSizes.caption,
          color: enabled
              ? scheduleTheme.primaryText
              : scheduleTheme.secondaryText,
        ),
        decoration: ScheduleFormDecorations.input(
          context,
          hintText: hint,
          enabled: enabled,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 16.w,
            vertical: maxLines == 1 ? 15.h : 18.h,
          ),
        ),
      ),
    );
  }
}
