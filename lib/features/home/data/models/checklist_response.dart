import 'package:freezed_annotation/freezed_annotation.dart';

part 'checklist_response.freezed.dart';
part 'checklist_response.g.dart';

@freezed
abstract class ChecklistResponse with _$ChecklistResponse {
  const factory ChecklistResponse({
    required bool success,
    List<ChecklistQuestion>? data,
  }) = _ChecklistResponse;

  factory ChecklistResponse.fromJson(Map<String, dynamic> json) =>
      _$ChecklistResponseFromJson(json);
}

@freezed
abstract class ChecklistQuestion with _$ChecklistQuestion {
  const factory ChecklistQuestion({
    required String id,
    required String scheduleV2Id,
    String? inspectionType,
    required String question,
    String? helpText,
    required String responseType,
    String? value,
    String? note,
    DateTime? completedAt,
    String? completedById,
    bool? isDeleted,
  }) = _ChecklistQuestion;

  factory ChecklistQuestion.fromJson(Map<String, dynamic> json) =>
      _$ChecklistQuestionFromJson(json);
}
