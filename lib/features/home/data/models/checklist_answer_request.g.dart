// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checklist_answer_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChecklistAnswerRequest _$ChecklistAnswerRequestFromJson(
  Map<String, dynamic> json,
) => _ChecklistAnswerRequest(
  answers: (json['answers'] as List<dynamic>)
      .map((e) => ChecklistAnswer.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$ChecklistAnswerRequestToJson(
  _ChecklistAnswerRequest instance,
) => <String, dynamic>{'answers': instance.answers};

_ChecklistAnswer _$ChecklistAnswerFromJson(Map<String, dynamic> json) =>
    _ChecklistAnswer(
      questionId: json['questionId'] as String,
      value: json['value'] as String,
      note: json['note'] as String,
    );

Map<String, dynamic> _$ChecklistAnswerToJson(_ChecklistAnswer instance) =>
    <String, dynamic>{
      'questionId': instance.questionId,
      'value': instance.value,
      'note': instance.note,
    };
