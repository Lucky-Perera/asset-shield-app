// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checklist_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChecklistResponse _$ChecklistResponseFromJson(Map<String, dynamic> json) =>
    _ChecklistResponse(
      success: json['success'] as bool,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => ChecklistQuestion.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ChecklistResponseToJson(_ChecklistResponse instance) =>
    <String, dynamic>{'success': instance.success, 'data': instance.data};

_ChecklistQuestion _$ChecklistQuestionFromJson(Map<String, dynamic> json) =>
    _ChecklistQuestion(
      id: json['id'] as String,
      scheduleV2Id: json['scheduleV2Id'] as String,
      inspectionType: json['inspectionType'] as String?,
      question: json['question'] as String,
      helpText: json['helpText'] as String?,
      responseType: json['responseType'] as String,
      value: json['value'] as String?,
      note: json['note'] as String?,
      completedAt: json['completedAt'] == null
          ? null
          : DateTime.parse(json['completedAt'] as String),
      completedById: json['completedById'] as String?,
      isDeleted: json['isDeleted'] as bool?,
    );

Map<String, dynamic> _$ChecklistQuestionToJson(_ChecklistQuestion instance) =>
    <String, dynamic>{
      'id': instance.id,
      'scheduleV2Id': instance.scheduleV2Id,
      'inspectionType': instance.inspectionType,
      'question': instance.question,
      'helpText': instance.helpText,
      'responseType': instance.responseType,
      'value': instance.value,
      'note': instance.note,
      'completedAt': instance.completedAt?.toIso8601String(),
      'completedById': instance.completedById,
      'isDeleted': instance.isDeleted,
    };
