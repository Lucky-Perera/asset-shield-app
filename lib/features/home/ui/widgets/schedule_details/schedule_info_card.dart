import 'package:asset_shield/core/theme/app_text_styles.dart';
import 'package:asset_shield/features/home/data/models/schedule_response.dart';
import 'package:flutter/material.dart';

class ScheduleInfoCard extends StatelessWidget {
  final Schedule schedule;

  const ScheduleInfoCard({super.key, required this.schedule});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Schedule Information',
              style: AppTextStyles.h2(
                context,
              ).copyWith(fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 12),
            _InfoRow(label: 'Schedule ID:', value: schedule.scheduleID),
            _InfoRow(label: 'Description:', value: schedule.description),
            _InfoRow(label: 'Status:', value: schedule.status),
            _InfoRow(
              label: 'Due Date:',
              value:
                  '${schedule.dueDate.day}/${schedule.dueDate.month}/${schedule.dueDate.year}',
            ),
            if (schedule.equipment?.name != null)
              _InfoRow(label: 'Equipment:', value: schedule.equipment!.name!),
          ],
        ),
      ),
    );
  }
}

class _InfoRow extends StatelessWidget {
  final String label;
  final String value;

  const _InfoRow({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 150,
            child: Text(
              label,
              style: AppTextStyles.base(
                context,
              ).copyWith(color: Colors.grey.shade700),
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: AppTextStyles.base(
                context,
              ).copyWith(fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    );
  }
}
