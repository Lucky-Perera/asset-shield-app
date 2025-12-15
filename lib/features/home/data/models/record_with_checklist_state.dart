import 'package:asset_shield/features/home/data/models/record_response.dart';
import 'package:asset_shield/features/home/data/models/record_with_checklist_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'record_with_checklist_state.freezed.dart';

@freezed
abstract class RecordWithChecklistState with _$RecordWithChecklistState {
  const factory RecordWithChecklistState({
    @Default(false) bool isLoading,
    String? error,
    RecordResponse? record,
    @Default([]) List<ChecklistQuestionItem> answeredQuestions,
    @Default(false) bool hasSubmittedAnswers,
  }) = _RecordWithChecklistState;
}
