import 'package:asset_shield/core/theme/app_text_styles.dart';
import 'package:asset_shield/core/theme/color_palette.dart';
import 'package:asset_shield/features/home/data/models/schedule_v2_response.dart';
import 'package:asset_shield/features/home/ui/widgets/checklist/question_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SectionTile extends StatelessWidget {
  final String title;
  final List<ChecklistQuestionTemplate> items;
  final Function(String questionId, String value, String note)? onAnswerChanged;
  final Function(String questionId, String attachmentId, String attachmentName)?
  onAttachmentUploaded;
  final Function(String questionId, String attachmentId)? onAttachmentDeleted;
  final bool readOnly;
  final Map<String, Map<String, String>>? initialValues;
  final Map<String, List<AttachmentV2>>? questionAttachments;
  final Map<String, List<Map<String, String>>>? uploadedAttachmentMetadata;
  final String? scheduleV2Id;
  final String? equipmentId;

  const SectionTile({
    super.key,
    required this.title,
    required this.items,
    this.onAnswerChanged,
    this.onAttachmentUploaded,
    this.onAttachmentDeleted,
    this.readOnly = false,
    this.initialValues,
    this.questionAttachments,
    this.uploadedAttachmentMetadata,
    this.scheduleV2Id,
    this.equipmentId,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: ColorPalette.whiteSwatch.shade200,
      // margin: EdgeInsets.only(bottom: 12.h),
      // elevation: 0,
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          // tilePadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
          title: Text(title, style: AppTextStyles.h2(context)),
          children: items.map((q) {
            final questionId = q.id;
            final initial = initialValues?[questionId];
            final attachments = questionAttachments?[questionId];
            final uploadedMetadata = uploadedAttachmentMetadata?[questionId];
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w),
              child: QuestionTile(
                key: ValueKey(questionId),
                question: q,
                onAnswerChanged: readOnly ? null : onAnswerChanged,
                onAttachmentUploaded: readOnly ? null : onAttachmentUploaded,
                onAttachmentDeleted: readOnly ? null : onAttachmentDeleted,
                readOnly: readOnly,
                initialValue: initial?['value'],
                initialNote: initial?['note'],
                scheduleV2Id: scheduleV2Id,
                equipmentId: equipmentId,
                existingAttachments: attachments,
                uploadedAttachmentMetadata: uploadedMetadata,
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
