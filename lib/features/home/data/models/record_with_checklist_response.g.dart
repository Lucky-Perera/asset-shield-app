// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'record_with_checklist_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RecordWithChecklistResponse _$RecordWithChecklistResponseFromJson(
  Map<String, dynamic> json,
) => _RecordWithChecklistResponse(
  success: json['success'] as bool,
  data: RecordWithChecklistData.fromJson(json['data'] as Map<String, dynamic>),
  message: json['message'] as String?,
);

Map<String, dynamic> _$RecordWithChecklistResponseToJson(
  _RecordWithChecklistResponse instance,
) => <String, dynamic>{
  'success': instance.success,
  'data': instance.data,
  'message': instance.message,
};

_RecordWithChecklistData _$RecordWithChecklistDataFromJson(
  Map<String, dynamic> json,
) => _RecordWithChecklistData(
  record: RecordResponse.fromJson(json['record'] as Map<String, dynamic>),
  status: json['status'] as String?,
  answeredQuestions: (json['answeredQuestions'] as List<dynamic>)
      .map((e) => ChecklistQuestionItem.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$RecordWithChecklistDataToJson(
  _RecordWithChecklistData instance,
) => <String, dynamic>{
  'record': instance.record,
  'status': instance.status,
  'answeredQuestions': instance.answeredQuestions,
};

_ChecklistQuestionItem _$ChecklistQuestionItemFromJson(
  Map<String, dynamic> json,
) => _ChecklistQuestionItem(
  id: json['id'] as String,
  scheduleId: json['scheduleId'] as String,
  inspectionType: json['inspectionType'] as String,
  question: json['question'] as String,
  helpText: json['helpText'] as String?,
  responseType: json['responseType'] as String,
  isDeleted: json['isDeleted'] as bool,
  section: json['section'] as String?,
  order: (json['order'] as num?)?.toInt(),
  value: json['value'] as String?,
  note: json['note'] as String?,
  completedAt: json['completedAt'] == null
      ? null
      : DateTime.parse(json['completedAt'] as String),
  attachments: (json['attachments'] as List<dynamic>?)
      ?.map((e) => AttachmentV2.fromJson(e as Map<String, dynamic>))
      .toList(),
  checklistAnswer: json['checklistAnswer'] == null
      ? null
      : ChecklistAnswer.fromJson(
          json['checklistAnswer'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$ChecklistQuestionItemToJson(
  _ChecklistQuestionItem instance,
) => <String, dynamic>{
  'id': instance.id,
  'scheduleId': instance.scheduleId,
  'inspectionType': instance.inspectionType,
  'question': instance.question,
  'helpText': instance.helpText,
  'responseType': instance.responseType,
  'isDeleted': instance.isDeleted,
  'section': instance.section,
  'order': instance.order,
  'value': instance.value,
  'note': instance.note,
  'completedAt': instance.completedAt?.toIso8601String(),
  'attachments': instance.attachments,
  'checklistAnswer': instance.checklistAnswer,
};
