import 'package:freezed_annotation/freezed_annotation.dart';

part 'checklist_state.freezed.dart';

@freezed
abstract class ChecklistState with _$ChecklistState {
  const factory ChecklistState({
    @Default({}) Map<String, ChecklistAnswerData> answers,
    @Default(false) bool isLoading,
    @Default(false) bool answersAlreadySubmitted,
    String? error,
  }) = _ChecklistState;
}

@freezed
abstract class ChecklistAnswerData with _$ChecklistAnswerData {
  const factory ChecklistAnswerData({
    required String value,
    @Default('') String note,
  }) = _ChecklistAnswerData;
}
