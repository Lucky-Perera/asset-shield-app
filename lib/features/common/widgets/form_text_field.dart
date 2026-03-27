import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/theme/app_text_styles.dart';
import '../../../core/theme/color_palette.dart';
import '../../../core/theme/theme_helpers.dart';

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
        TextFormField(
          controller: controller,
          validator: validator,
          maxLines: maxLines,
          minLines: minLines,
          keyboardType: keyboardType,
          enabled: enabled,
          onChanged: onChanged,
          style: AppTextStyles.fieldValue(context).copyWith(
            color: enabled ? ColorPalette.textPrimary : ColorPalette.disabled,
          ),
          decoration: InputDecoration(
            hintText: hint,
            fillColor: enabled ? null : ColorPalette.surfaceMuted,
          ),
        ),
      ],
    );
  }
}
