import 'package:asset_shield/features/home/data/models/record_response.dart';
import 'package:asset_shield/features/home/data/models/checklist_answer_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'record_with_checklist_response.freezed.dart';
part 'record_with_checklist_response.g.dart';

/// Response for the combined record creation with checklist answers
@freezed
abstract class RecordWithChecklistResponse with _$RecordWithChecklistResponse {
  const factory RecordWithChecklistResponse({
    required bool success,
    required RecordWithChecklistData data,
    String? message,
  }) = _RecordWithChecklistResponse;

  factory RecordWithChecklistResponse.fromJson(Map<String, dynamic> json) =>
      _$RecordWithChecklistResponseFromJson(json);
}

@freezed
abstract class RecordWithChecklistData with _$RecordWithChecklistData {
  const factory RecordWithChecklistData({
    required RecordResponse record,
    required List<ChecklistQuestionItem> answeredQuestions,
  }) = _RecordWithChecklistData;

  factory RecordWithChecklistData.fromJson(Map<String, dynamic> json) =>
      _$RecordWithChecklistDataFromJson(json);
}
