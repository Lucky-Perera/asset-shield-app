import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import '../../../core/theme/color_palette.dart';

/// A reusable date picker field widget with consistent styling
class FormDateField extends StatelessWidget {
  final String label;
  final DateTime? selectedDate;
  final ValueChanged<DateTime> onDateSelected;
  final String? Function(DateTime?)? validator;
  final bool isRequired;
  final DateTime? firstDate;
  final DateTime? lastDate;

  const FormDateField({
    super.key,
    required this.label,
    this.selectedDate,
    required this.onDateSelected,
    this.validator,
    this.isRequired = false,
    this.firstDate,
    this.lastDate,
  });

  @override
  Widget build(BuildContext context) {
    final dateFormat = DateFormat('yyyy-MM-dd');

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
        GestureDetector(
          onTap: () => _selectDate(context),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
            decoration: BoxDecoration(
              color: ColorPalette.white,
              borderRadius: BorderRadius.circular(8.r),
              border: Border.all(color: ColorPalette.grey300),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  selectedDate != null
                      ? dateFormat.format(selectedDate!)
                      : 'Select date',
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: selectedDate != null
                        ? ColorPalette.black
                        : ColorPalette.grey400,
                  ),
                ),
                const Icon(
                  Icons.calendar_today,
                  color: ColorPalette.grey500,
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
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: const ColorScheme.light(
              primary: ColorPalette.black,
              onPrimary: ColorPalette.white,
              surface: ColorPalette.white,
              onSurface: ColorPalette.black,
            ),
          ),
          child: child!,
        );
      },
    );

    if (picked != null) {
      onDateSelected(picked);
    }
  }
}
