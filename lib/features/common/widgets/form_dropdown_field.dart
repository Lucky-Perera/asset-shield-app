import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/theme/schedule_styles.dart';
import '../../../core/theme/schedule_theme.dart';
import 'schedule_form_primitives.dart';

class FormDropdownField<T> extends StatelessWidget {
  final String label;
  final String? hint;
  final T? value;
  final List<DropdownMenuItem<T>> items;
  final ValueChanged<T?>? onChanged;
  final String? Function(T?)? validator;
  final bool isRequired;
  final bool readOnly;

  const FormDropdownField({
    super.key,
    required this.label,
    this.hint,
    this.value,
    required this.items,
    this.onChanged,
    this.validator,
    this.isRequired = false,
    this.readOnly = false,
  });

  @override
  Widget build(BuildContext context) {
    final scheduleTheme = context.scheduleTheme;

    return ScheduleFieldSection(
      label: label,
      isRequired: isRequired,
      child: DropdownButtonFormField<T>(
        initialValue: value,
        items: items,
        onChanged: readOnly ? null : onChanged,
        validator: validator,
        style: ScheduleTextStyles.value(
          context,
          color: readOnly
              ? scheduleTheme.secondaryText
              : scheduleTheme.primaryText,
        ),
        decoration: ScheduleFormDecorations.input(
          context,
          hintText: hint,
          enabled: !readOnly,
        ),
        icon: Icon(
          Icons.keyboard_arrow_down_rounded,
          color: readOnly ? scheduleTheme.secondaryText : scheduleTheme.icon,
          size: 22.sp,
        ),
        isExpanded: true,
        dropdownColor: scheduleTheme.cardBackground,
      ),
    );
  }
}
