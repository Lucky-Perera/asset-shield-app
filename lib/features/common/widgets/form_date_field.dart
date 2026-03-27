import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import '../../../core/theme/app_text_styles.dart';
import '../../../core/theme/color_palette.dart';
import '../../../core/theme/theme_helpers.dart';

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

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            children: [
              buildFormFieldLabel(
                label: label,
                style: AppTextStyles.fieldLabel(context),
                isRequired: isRequired,
              ),
            ],
          ),
        ),
        SizedBox(height: 8.h),
        GestureDetector(
          onTap: readOnly ? null : () => _selectDate(context),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
            decoration: BoxDecoration(
              color: readOnly
                  ? ColorPalette.surfaceMuted
                  : ColorPalette.surface,
              borderRadius: BorderRadius.circular(8.r),
              border: Border.all(color: ColorPalette.border),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  selectedDate != null
                      ? dateFormat.format(selectedDate!)
                      : 'Select date',
                  style: AppTextStyles.fieldValue(context).copyWith(
                    color: selectedDate != null
                        ? ColorPalette.textPrimary
                        : ColorPalette.textMuted,
                  ),
                ),
                const Icon(
                  Icons.calendar_today,
                  color: ColorPalette.textMuted,
                  size: 20,
                ),
              ],
            ),
          ),
        ),
      ],
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
