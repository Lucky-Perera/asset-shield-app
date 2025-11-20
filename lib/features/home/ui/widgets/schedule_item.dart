import 'package:asset_shield/core/theme/color_palette.dart';
import 'package:asset_shield/features/home/data/models/schedule_response.dart';
import 'package:flutter/material.dart';

class ScheduleItem extends StatelessWidget {
  final Schedule schedule;
  final VoidCallback? onTap;

  const ScheduleItem({super.key, required this.schedule, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: ColorPalette.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: ColorPalette.grey300, width: 1),
          boxShadow: [
            BoxShadow(
              color: ColorPalette.black.withOpacity(0.05),
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header Row with S.I. and E.I.
            Row(
              children: [
                // S.I. Label
                Expanded(
                  child: RichText(
                    text: TextSpan(
                      style: const TextStyle(
                        fontSize: 16,
                        color: ColorPalette.black,
                        fontWeight: FontWeight.w500,
                      ),
                      children: [
                        const TextSpan(
                          text: 'S.I. : ',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        TextSpan(
                          text: schedule.id.toUpperCase(),
                          style: const TextStyle(fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            // E.I. Label
            RichText(
              text: TextSpan(
                style: const TextStyle(
                  fontSize: 16,
                  color: ColorPalette.black,
                  fontWeight: FontWeight.w500,
                ),
                children: [
                  const TextSpan(
                    text: 'E.I. : ',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  TextSpan(
                    text: "schedule.equipmentID.toUpperCase()",
                    style: const TextStyle(fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
