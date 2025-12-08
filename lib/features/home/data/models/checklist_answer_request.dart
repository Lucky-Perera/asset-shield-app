import 'package:freezed_annotation/freezed_annotation.dart';

part 'checklist_answer_request.freezed.dart';
part 'checklist_answer_request.g.dart';

@freezed
abstract class ChecklistAnswerRequest with _$ChecklistAnswerRequest {
  const factory ChecklistAnswerRequest({
    required List<ChecklistAnswerRequestItem> answers,
  }) = _ChecklistAnswerRequest;

  factory ChecklistAnswerRequest.fromJson(Map<String, dynamic> json) =>
      _$ChecklistAnswerRequestFromJson(json);
}

@freezed
abstract class ChecklistAnswerRequestItem with _$ChecklistAnswerRequestItem {
  const factory ChecklistAnswerRequestItem({
    required String questionId,
    required String value,
    required String note,
  }) = _ChecklistAnswerRequestItem;

  factory ChecklistAnswerRequestItem.fromJson(Map<String, dynamic> json) =>
      _$ChecklistAnswerRequestItemFromJson(json);
}
