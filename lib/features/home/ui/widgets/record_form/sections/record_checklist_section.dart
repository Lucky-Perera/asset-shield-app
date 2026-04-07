import 'package:asset_shield/core/theme/app_typography.dart';
import 'package:asset_shield/core/theme/schedule_styles.dart';
import 'package:asset_shield/core/theme/schedule_theme.dart';
import 'package:asset_shield/features/home/data/models/schedule_v2_response.dart';
import 'package:asset_shield/features/home/ui/widgets/checklist/checklist_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecordChecklistSection extends StatelessWidget {
  final bool isLoading;
  final List<ChecklistQuestionTemplate> questions;
  final bool isReadOnly;
  final Function(String, String, String)? onAnswerChanged;
  final Function(String, String, String)? onAttachmentUploaded;
  final Function(String, String)? onAttachmentDeleted;
  final Map<String, Map<String, String>> initialValues;
  final Map<String, List<AttachmentV2>> questionAttachments;
  final Map<String, List<Map<String, String>>> uploadedAttachmentMetadata;
  final String scheduleV2Id;
  final String equipmentId;

  const RecordChecklistSection({
    super.key,
    required this.isLoading,
    required this.questions,
    required this.isReadOnly,
    this.onAnswerChanged,
    this.onAttachmentUploaded,
    this.onAttachmentDeleted,
    required this.initialValues,
    required this.questionAttachments,
    required this.uploadedAttachmentMetadata,
    required this.scheduleV2Id,
    required this.equipmentId,
  });

  @override
  Widget build(BuildContext context) {
    if (questions.isEmpty) return const SizedBox.shrink();

    final scheduleTheme = context.scheduleTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'Checklist',
          style: ScheduleTextStyles.title(
            context,
            size: AppFontSizes.caption,
          ),
        ),
        SizedBox(height: 14.h),
        isLoading
            ? Center(
                child: Padding(
                  padding: EdgeInsets.all(24.h),
                  child: CircularProgressIndicator(
                    color: scheduleTheme.icon,
                  ),
                ),
              )
            : ChecklistSections(
                questions: questions,
                onAnswerChanged: onAnswerChanged,
                onAttachmentUploaded: onAttachmentUploaded,
                onAttachmentDeleted: onAttachmentDeleted,
                readOnly: isReadOnly,
                initialValues: initialValues,
                questionAttachments: questionAttachments,
                uploadedAttachmentMetadata: uploadedAttachmentMetadata,
                scheduleV2Id: scheduleV2Id,
                equipmentId: equipmentId,
              ),
      ],
    );
  }
}
