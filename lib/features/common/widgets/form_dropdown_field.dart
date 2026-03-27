import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/theme/app_text_styles.dart';
import '../../../core/theme/color_palette.dart';
import '../../../core/theme/theme_helpers.dart';

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
        DropdownButtonFormField<T>(
          initialValue: value,
          items: items,
          onChanged: readOnly ? null : onChanged,
          validator: validator,
          style: AppTextStyles.fieldValue(context),
          decoration: InputDecoration(
            hintText: hint,
            fillColor: readOnly ? ColorPalette.surfaceMuted : null,
          ),
          icon: const Icon(Icons.keyboard_arrow_down),
          isExpanded: true,
        ),
      ],
    );
  }
}
