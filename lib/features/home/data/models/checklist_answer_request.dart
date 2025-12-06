import 'package:freezed_annotation/freezed_annotation.dart';

part 'checklist_answer_request.freezed.dart';
part 'checklist_answer_request.g.dart';

@freezed
abstract class ChecklistAnswerRequest with _$ChecklistAnswerRequest {
  const factory ChecklistAnswerRequest({
    required List<ChecklistAnswer> answers,
  }) = _ChecklistAnswerRequest;

  factory ChecklistAnswerRequest.fromJson(Map<String, dynamic> json) =>
      _$ChecklistAnswerRequestFromJson(json);
}

@freezed
abstract class ChecklistAnswer with _$ChecklistAnswer {
  const factory ChecklistAnswer({
    required String questionId,
    required String value,
    required String note,
  }) = _ChecklistAnswer;

  factory ChecklistAnswer.fromJson(Map<String, dynamic> json) =>
      _$ChecklistAnswerFromJson(json);
}
