import 'package:asset_shield/features/home/data/models/schedule_v2_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'checklist_answer_response.freezed.dart';
part 'checklist_answer_response.g.dart';

@freezed
abstract class ChecklistAnswerResponse with _$ChecklistAnswerResponse {
  const factory ChecklistAnswerResponse({
    required bool success,
    required List<ChecklistQuestionV2> data,
    String? message,
  }) = _ChecklistAnswerResponse;

  factory ChecklistAnswerResponse.fromJson(Map<String, dynamic> json) =>
      _$ChecklistAnswerResponseFromJson(json);
}
