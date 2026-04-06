import 'package:asset_shield/core/theme/app_typography.dart';
import 'package:asset_shield/core/theme/schedule_styles.dart';
import 'package:asset_shield/core/theme/schedule_theme.dart';
import 'package:asset_shield/features/home/data/models/schedule_v2_response.dart';
import 'package:asset_shield/features/home/ui/widgets/checklist/question_tile.dart';
import 'package:asset_shield/features/home/ui/widgets/schedule_ui/schedule_surface.dart';
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
  final bool initiallyExpanded;

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
    this.initiallyExpanded = false,
  });

  @override
  Widget build(BuildContext context) {
    final scheduleTheme = context.scheduleTheme;

    return ScheduleSurfaceCard(
      backgroundColor: scheduleTheme.sectionBackground.withValues(alpha: 0.74),
      borderColor: scheduleTheme.cardBorder,
      boxShadow: const [],
      padding: EdgeInsets.zero,
      radius: scheduleTheme.radius,
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          initiallyExpanded: initiallyExpanded,
          tilePadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 4.h),
          childrenPadding: EdgeInsets.fromLTRB(16.w, 0, 16.w, 16.h),
          iconColor: scheduleTheme.icon,
          collapsedIconColor: scheduleTheme.icon,
          shape: const Border(),
          collapsedShape: const Border(),
          title: Text(
            title,
            style: ScheduleTextStyles.value(
              context,
              size: AppFontSizes.caption,
            ),
          ),
          children: [
            for (var index = 0; index < items.length; index++) ...[
              QuestionTile(
                key: ValueKey(items[index].id),
                question: items[index],
                onAnswerChanged: readOnly ? null : onAnswerChanged,
                onAttachmentUploaded: readOnly ? null : onAttachmentUploaded,
                onAttachmentDeleted: readOnly ? null : onAttachmentDeleted,
                readOnly: readOnly,
                initialValue: initialValues?[items[index].id]?['value'],
                initialNote: initialValues?[items[index].id]?['note'],
                scheduleV2Id: scheduleV2Id,
                equipmentId: equipmentId,
                existingAttachments: questionAttachments?[items[index].id],
                uploadedAttachmentMetadata:
                    uploadedAttachmentMetadata?[items[index].id],
                initiallyExpanded: initiallyExpanded && index == 0,
              ),
              if (index != items.length - 1) SizedBox(height: 12.h),
            ],
          ],
        ),
      ),
    );
  }
}
