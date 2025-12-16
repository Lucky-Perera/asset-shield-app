import 'package:asset_shield/features/home/ui/widgets/checklist/section_tile.dart';
import 'package:flutter/material.dart';
import 'package:asset_shield/features/home/data/models/schedule_v2_response.dart';

class ChecklistSections extends StatelessWidget {
  final List<ChecklistQuestionTemplate> questions;
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

  const ChecklistSections({
    super.key,
    required this.questions,
    this.onAnswerChanged,
    this.onAttachmentUploaded,
    this.onAttachmentDeleted,
    this.readOnly = false,
    this.initialValues,
    this.questionAttachments,
    this.uploadedAttachmentMetadata,
    this.scheduleV2Id,
    this.equipmentId,
  }) : assert(
         !readOnly || onAnswerChanged == null,
         'onAnswerChanged should be null when readOnly is true',
       );

  List<ChecklistQuestionTemplate> _filter(String type) => questions
      .where(
        (q) => (q.inspectionType ?? '').toLowerCase() == type.toLowerCase(),
      )
      .toList();

  @override
  Widget build(BuildContext context) {
    final internal = _filter('INTERNAL');
    final external = _filter('EXTERNAL');

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        if (internal.isNotEmpty)
          SectionTile(
            title: 'Internal',
            items: internal,
            onAnswerChanged: onAnswerChanged,
            onAttachmentUploaded: onAttachmentUploaded,
            onAttachmentDeleted: onAttachmentDeleted,
            readOnly: readOnly,
            initialValues: initialValues,
            questionAttachments: questionAttachments,
            uploadedAttachmentMetadata: uploadedAttachmentMetadata,
            scheduleV2Id: scheduleV2Id,
            equipmentId: equipmentId,
          ),
        if (external.isNotEmpty)
          SectionTile(
            title: 'External',
            items: external,
            onAnswerChanged: onAnswerChanged,
            onAttachmentUploaded: onAttachmentUploaded,
            onAttachmentDeleted: onAttachmentDeleted,
            readOnly: readOnly,
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
