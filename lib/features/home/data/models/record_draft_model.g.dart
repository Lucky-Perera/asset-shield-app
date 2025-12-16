// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'record_draft_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RecordDraftModel _$RecordDraftModelFromJson(Map<String, dynamic> json) =>
    _RecordDraftModel(
      description: json['description'] as String?,
      actionCreated: json['actionCreated'] as String?,
      comments: json['comments'] as String?,
      recordCreatedDate: json['recordCreatedDate'] == null
          ? null
          : DateTime.parse(json['recordCreatedDate'] as String),
      inspectionDate: json['inspectionDate'] == null
          ? null
          : DateTime.parse(json['inspectionDate'] as String),
      selectedInspectedComponents:
          (json['selectedInspectedComponents'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      checklistAnswers:
          (json['checklistAnswers'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(
              k,
              ChecklistAnswerDraft.fromJson(e as Map<String, dynamic>),
            ),
          ) ??
          const {},
      questionAttachments:
          (json['questionAttachments'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(
              k,
              (e as List<dynamic>)
                  .map(
                    (e) => AttachmentDraft.fromJson(e as Map<String, dynamic>),
                  )
                  .toList(),
            ),
          ) ??
          const {},
    );

Map<String, dynamic> _$RecordDraftModelToJson(_RecordDraftModel instance) =>
    <String, dynamic>{
      'description': instance.description,
      'actionCreated': instance.actionCreated,
      'comments': instance.comments,
      'recordCreatedDate': instance.recordCreatedDate?.toIso8601String(),
      'inspectionDate': instance.inspectionDate?.toIso8601String(),
      'selectedInspectedComponents': instance.selectedInspectedComponents,
      'checklistAnswers': instance.checklistAnswers,
      'questionAttachments': instance.questionAttachments,
    };

_ChecklistAnswerDraft _$ChecklistAnswerDraftFromJson(
  Map<String, dynamic> json,
) => _ChecklistAnswerDraft(
  value: json['value'] as String? ?? '',
  note: json['note'] as String? ?? '',
);

Map<String, dynamic> _$ChecklistAnswerDraftToJson(
  _ChecklistAnswerDraft instance,
) => <String, dynamic>{'value': instance.value, 'note': instance.note};

_AttachmentDraft _$AttachmentDraftFromJson(Map<String, dynamic> json) =>
    _AttachmentDraft(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
    );

Map<String, dynamic> _$AttachmentDraftToJson(_AttachmentDraft instance) =>
    <String, dynamic>{'id': instance.id, 'name': instance.name};
