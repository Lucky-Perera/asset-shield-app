// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checklist_answer_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChecklistAnswerResponse _$ChecklistAnswerResponseFromJson(
  Map<String, dynamic> json,
) => _ChecklistAnswerResponse(
  success: json['success'] as bool,
  data: (json['data'] as List<dynamic>)
      .map((e) => ChecklistQuestionV2.fromJson(e as Map<String, dynamic>))
      .toList(),
  message: json['message'] as String?,
);

Map<String, dynamic> _$ChecklistAnswerResponseToJson(
  _ChecklistAnswerResponse instance,
) => <String, dynamic>{
  'success': instance.success,
  'data': instance.data,
  'message': instance.message,
};
