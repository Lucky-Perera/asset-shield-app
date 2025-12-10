// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checklist_answer_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChecklistAnswerResponse _$ChecklistAnswerResponseFromJson(
  Map<String, dynamic> json,
) => _ChecklistAnswerResponse(
  success: json['success'] as bool,
  message: json['message'] as String?,
  data: (json['data'] as List<dynamic>)
      .map((e) => ChecklistQuestionItem.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$ChecklistAnswerResponseToJson(
  _ChecklistAnswerResponse instance,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
  'data': instance.data,
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

_ChecklistAnswer _$ChecklistAnswerFromJson(Map<String, dynamic> json) =>
    _ChecklistAnswer(
      id: json['id'] as String,
      value: json['value'] as String?,
      note: json['note'] as String?,
      completedAt: json['completedAt'] == null
          ? null
          : DateTime.parse(json['completedAt'] as String),
      recordId: json['recordId'] as String,
      questionId: json['questionId'] as String,
      attachments: (json['attachments'] as List<dynamic>?)
          ?.map((e) => AttachmentV2.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ChecklistAnswerToJson(_ChecklistAnswer instance) =>
    <String, dynamic>{
      'id': instance.id,
      'value': instance.value,
      'note': instance.note,
      'completedAt': instance.completedAt?.toIso8601String(),
      'recordId': instance.recordId,
      'questionId': instance.questionId,
      'attachments': instance.attachments,
    };

_AttachmentV2 _$AttachmentV2FromJson(Map<String, dynamic> json) =>
    _AttachmentV2(
      id: json['id'] as String,
      documentID: json['documentID'] as String,
      name: json['name'] as String,
      url: json['url'] as String,
      description: json['description'] as String?,
      comments: json['comments'] as String?,
      equipmentId: json['equipmentId'] as String?,
      scheduleId: json['scheduleId'] as String?,
      scopeImageScheduleId: json['scopeImageScheduleId'] as String?,
      checklistAnswerId: json['checklistAnswerId'] as String?,
      recordId: json['recordId'] as String?,
      isDeleted: json['isDeleted'] as bool?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$AttachmentV2ToJson(_AttachmentV2 instance) =>
    <String, dynamic>{
      'id': instance.id,
      'documentID': instance.documentID,
      'name': instance.name,
      'url': instance.url,
      'description': instance.description,
      'comments': instance.comments,
      'equipmentId': instance.equipmentId,
      'scheduleId': instance.scheduleId,
      'scopeImageScheduleId': instance.scopeImageScheduleId,
      'checklistAnswerId': instance.checklistAnswerId,
      'recordId': instance.recordId,
      'isDeleted': instance.isDeleted,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
