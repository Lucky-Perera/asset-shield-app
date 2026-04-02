import 'package:asset_shield/core/theme/color_palette.dart';
import 'package:flutter/material.dart';

TextSpan buildFormFieldLabel({
  required String label,
  required TextStyle style,
  bool isRequired = false,
}) {
  return TextSpan(
    style: style,
    children: [
      if (isRequired)
        TextSpan(
          text: '* ',
          style: style.copyWith(color: ColorPalette.danger),
        ),
      TextSpan(text: label),
    ],
  );
}
