import 'dart:developer';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:asset_shield/features/home/data/models/checklist_state.dart';
import 'package:asset_shield/features/home/data/services/schedule_service.dart';

part 'checklist_provider.g.dart';

@Riverpod(keepAlive: false)
class ChecklistNotifier extends _$ChecklistNotifier {
  late final String _scheduleId;

  /// ---- BUILD: load initial data (async) ----
  @override
  Future<ChecklistState> build(String scheduleId) async {
    _scheduleId = scheduleId;
    return _fetchChecklistAnswers();
  }

  /// ---- PRIVATE: main fetch logic ----
  Future<ChecklistState> _fetchChecklistAnswers() async {
    try {
      final response = await ScheduleService().fetchChecklistAnswers(
        scheduleId: _scheduleId,
      );

      final answers = <String, ChecklistAnswerData>{};

      for (final answer in response.data) {
        if (answer.checklistAnswer?.value != null) {
          answers[answer.id] = ChecklistAnswerData(
            value: answer.checklistAnswer?.value ?? '',
            note: answer.checklistAnswer!.note ?? '',
          );
        }
      }

      final submitted = answers.isNotEmpty;

      return ChecklistState(
        isLoading: false,
        answers: answers,
        answersAlreadySubmitted: submitted,
      );
    } catch (e, st) {
      log("Error fetching checklist: $e", stackTrace: st);
      throw Exception("Failed to load checklist");
    }
  }

  /// ---- PUBLIC: Refresh the checklist ----
  Future<void> refresh() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() => _fetchChecklistAnswers());
  }

  /// ---- PUBLIC: Update a single answer ----
  void updateAnswer({
    required String questionId,
    required String value,
    required String note,
  }) {
    final current = state.value;
    if (current == null) return;

    final updated = Map<String, ChecklistAnswerData>.from(current.answers);
    updated[questionId] = ChecklistAnswerData(value: value, note: note);

    state = AsyncValue.data(current.copyWith(answers: updated));
  }

  /// ---- DEPRECATED: Submit all checklist answers ----
  /// This method is deprecated. Use createRecordWithChecklist from RecordNotifier instead.
  /// The new combined API submits record and checklist answers together.
  // Future<ChecklistAnswerResponse> submitChecklistAnswers() async {
  //   log("Submitting checklist answers...", name: "ChecklistNotifier");
  //   final current = state.value;
  //   if (current == null) {
  //     throw Exception("Checklist not loaded yet");
  //   }

  //   final answerList = current.answers.entries.map((e) {
  //     return ChecklistAnswerRequestItem(
  //       questionId: e.key,
  //       value: e.value.value,
  //       note: e.value.note,
  //     );
  //   }).toList();

  //   final request = ChecklistAnswerRequest(answers: answerList);

  //   final response = await ScheduleService().submitChecklistAnswers(
  //     scheduleId: _scheduleId,
  //     payload: request,
  //   );

  //   // Mark submitted
  //   state = AsyncValue.data(current.copyWith(answersAlreadySubmitted: true));

  //   return response;
  // }

  /// ---- PUBLIC: Reset checklist ----
  void reset() {
    state = const AsyncValue.data(ChecklistState());
  }

  /// ---- PUBLIC: Get answer for a specific question ----
  ChecklistAnswerData? getAnswer(String questionId) {
    return state.value?.answers[questionId];
  }

  /// ---- PUBLIC: Validate completed questions ----
  bool areAllQuestionsAnswered(int totalQuestions) {
    final answers = state.value?.answers ?? {};
    return answers.length >= totalQuestions;
  }

  /// ---- PUBLIC: Validate required fields ----
  String? validateAnswers() {
    final answers = state.value?.answers ?? {};
    for (final entry in answers.entries) {
      if (entry.value.value.isEmpty) {
        return "Please select a response for all questions";
      }
    }
    return null;
  }
}
