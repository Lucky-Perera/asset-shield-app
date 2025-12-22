import 'package:asset_shield/core/enums/enums.dart';
import 'package:asset_shield/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class RecordStatusPill extends StatelessWidget {
  final RecordStatus? status;
  const RecordStatusPill({super.key, this.status});

  @override
  Widget build(BuildContext context) {
    // Handle null status
    if (status == null) {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        decoration: BoxDecoration(
          color: Colors.grey.withValues(alpha: 0.2),
          borderRadius: BorderRadius.circular(6),
        ),
        child: Text(
          'No record',
          style: AppTextStyles.label(
            context,
          ).copyWith(color: Colors.grey, fontWeight: FontWeight.w600),
        ),
      );
    }

    // Get color and text based on status
    Color statusColor;
    String statusText;

    switch (status!) {
      case RecordStatus.approved:
        statusColor = Colors.green;
        statusText = 'Approved';
        break;
      case RecordStatus.pendingApproval:
        statusColor = Colors.orange;
        statusText = 'Pending Approval';
        break;
      case RecordStatus.rejected:
        statusColor = Colors.red;
        statusText = 'Rejected';
        break;
      case RecordStatus.draft:
        statusColor = Colors.blue;
        statusText = 'Draft';
        break;
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: statusColor.withValues(alpha: 0.2),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Text(
        statusText,
        style: AppTextStyles.label(context).copyWith(
          color: statusColor,
          fontWeight: FontWeight.w600,
          fontSize: 12,
        ),
      ),
    );
  }
}
