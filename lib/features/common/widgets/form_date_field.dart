import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import '../../../core/theme/app_typography.dart';
import '../../../core/theme/schedule_styles.dart';
import '../../../core/theme/schedule_theme.dart';
import 'schedule_form_primitives.dart';

/// A reusable date picker field widget with consistent styling
class FormDateField extends StatelessWidget {
  final String label;
  final DateTime? selectedDate;
  final ValueChanged<DateTime> onDateSelected;
  final String? Function(DateTime?)? validator;
  final bool isRequired;
  final DateTime? firstDate;
  final DateTime? lastDate;
  final bool readOnly;

  const FormDateField({
    super.key,
    required this.label,
    this.selectedDate,
    required this.onDateSelected,
    this.validator,
    this.isRequired = false,
    this.firstDate,
    this.lastDate,
    this.readOnly = false,
  });

  @override
  Widget build(BuildContext context) {
    final dateFormat = DateFormat('yyyy-MM-dd');
    final scheduleTheme = context.scheduleTheme;

    return ScheduleFieldSection(
      label: label,
      isRequired: isRequired,
      child: GestureDetector(
        onTap: readOnly ? null : () => _selectDate(context),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 15.h),
          decoration: ScheduleFormDecorations.container(
            context,
            enabled: !readOnly,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                selectedDate != null
                    ? dateFormat.format(selectedDate!)
                    : 'Select date',
                style: selectedDate != null
                    ? ScheduleTextStyles.value(
                        context,
                        size: AppFontSizes.caption,
                        color: readOnly
                            ? scheduleTheme.secondaryText
                            : scheduleTheme.primaryText,
                      )
                    : ScheduleTextStyles.hint(
                        context,
                        size: AppFontSizes.caption,
                      ),
              ),
              Icon(
                Icons.calendar_today_outlined,
                color: readOnly
                    ? scheduleTheme.secondaryText
                    : scheduleTheme.icon,
                size: 22.sp,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate ?? DateTime.now(),
      firstDate: firstDate ?? DateTime(2000),
      lastDate: lastDate ?? DateTime(2100),
    );

    if (picked != null) {
      onDateSelected(picked);
    }
  }
}
