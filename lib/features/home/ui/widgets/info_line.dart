import 'package:asset_shield/core/theme/app_typography.dart';
import 'package:asset_shield/core/theme/schedule_styles.dart';
import 'package:flutter/material.dart';

class InfoLine extends StatelessWidget {
  final String label;
  final String value;

  const InfoLine({super.key, required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return RichText(
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      text: TextSpan(
        children: [
          TextSpan(
            text: '$label ',
            style: ScheduleTextStyles.value(
              context,
              size: AppFontSizes.label,
              weight: FontWeight.w700,
            ),
          ),
          TextSpan(
            text: value,
            style: ScheduleTextStyles.value(
              context,
              size: AppFontSizes.label,
              weight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
