import 'package:freezed_annotation/freezed_annotation.dart';

part 'checklist_answer_response.freezed.dart';
part 'checklist_answer_response.g.dart';

/// ─────────────────────────────────────────────────────────
/// ROOT RESPONSE
/// ─────────────────────────────────────────────────────────
@freezed
abstract class ChecklistAnswerResponse with _$ChecklistAnswerResponse {
  const factory ChecklistAnswerResponse({
    required bool success,
    String? message,
    required List<ChecklistQuestionItem> data,
  }) = _ChecklistAnswerResponse;

  factory ChecklistAnswerResponse.fromJson(Map<String, dynamic> json) =>
      _$ChecklistAnswerResponseFromJson(json);
}

/// ─────────────────────────────────────────────────────────
/// CHECKLIST QUESTION ITEM
/// ─────────────────────────────────────────────────────────
@freezed
abstract class ChecklistQuestionItem with _$ChecklistQuestionItem {
  const factory ChecklistQuestionItem({
    required String id,
    required String scheduleId,
    required String inspectionType,
    required String question,
    String? helpText,
    required String responseType,
    required bool isDeleted,
    String? section,
    int? order,
    ChecklistAnswer? checklistAnswer,
  }) = _ChecklistQuestionItem;

  factory ChecklistQuestionItem.fromJson(Map<String, dynamic> json) =>
      _$ChecklistQuestionItemFromJson(json);
}

/// ─────────────────────────────────────────────────────────
/// CHECKLIST ANSWER
/// ─────────────────────────────────────────────────────────
@freezed
abstract class ChecklistAnswer with _$ChecklistAnswer {
  const factory ChecklistAnswer({
    required String id,
    String? value,
    String? note,
    DateTime? completedAt,
    required String recordId,
    required String questionId,
    List<AttachmentV2>? attachments,
  }) = _ChecklistAnswer;

  factory ChecklistAnswer.fromJson(Map<String, dynamic> json) =>
      _$ChecklistAnswerFromJson(json);
}

/// ─────────────────────────────────────────────────────────
/// ATTACHMENTS
/// ─────────────────────────────────────────────────────────
@freezed
abstract class AttachmentV2 with _$AttachmentV2 {
  const factory AttachmentV2({
    required String id,
    required String documentID,
    required String name,
    required String url,
    String? description,
    String? comments,
    String? equipmentId,
    String? scheduleId,
    String? scopeImageScheduleId,
    String? checklistAnswerId,
    String? recordId,
    bool? isDeleted,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _AttachmentV2;

  factory AttachmentV2.fromJson(Map<String, dynamic> json) =>
      _$AttachmentV2FromJson(json);
}
