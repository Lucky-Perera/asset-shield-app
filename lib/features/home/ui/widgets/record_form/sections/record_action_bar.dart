import 'package:asset_shield/core/enums/enums.dart';
import 'package:asset_shield/features/common/widgets/reusable_button.dart';
import 'package:asset_shield/features/home/ui/widgets/schedule_ui/schedule_surface.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecordActionBar extends StatelessWidget {
  final VoidCallback onClose;
  final VoidCallback onSaveDraft;
  final VoidCallback onSubmit;
  final bool isEditable;
  final bool hasSubmittedAnswers;
  final RecordStatus? recordStatus;

  const RecordActionBar({
    super.key,
    required this.onClose,
    required this.onSaveDraft,
    required this.onSubmit,
    required this.isEditable,
    required this.hasSubmittedAnswers,
    this.recordStatus,
  });

  @override
  Widget build(BuildContext context) {
    return ScheduleBottomBar(
      child: Row(
        children: [
          Expanded(
            child: ReusableButton(
              text: 'Close',
              onPressed: onClose,
              variant: ButtonVariant.ghost,
            ),
          ),
          SizedBox(width: 12.w),
          if (!hasSubmittedAnswers || isEditable) ...[
            Expanded(
              child: ReusableButton(
                text: 'Draft',
                onPressed: onSaveDraft,
                variant: ButtonVariant.secondary,
              ),
            ),
            SizedBox(width: 12.w),
          ],
          Expanded(
            child: ReusableButton(
              text: recordStatus == RecordStatus.rejected ? 'Resubmit' : 'Submit',
              onPressed: (hasSubmittedAnswers && !isEditable) ? null : onSubmit,
              variant: ButtonVariant.primary,
            ),
          ),
        ],
      ),
    );
  }
}
