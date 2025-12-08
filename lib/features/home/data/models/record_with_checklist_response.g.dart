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
  answeredQuestions: (json['answeredQuestions'] as List<dynamic>)
      .map((e) => ChecklistQuestionItem.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$RecordWithChecklistDataToJson(
  _RecordWithChecklistData instance,
) => <String, dynamic>{
  'record': instance.record,
  'answeredQuestions': instance.answeredQuestions,
};
