import 'dart:developer';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:asset_shield/features/home/data/models/checklist_answer_request.dart';
import 'package:asset_shield/features/home/data/models/checklist_answer_response.dart';
import 'package:asset_shield/features/home/data/models/checklist_state.dart';
import 'package:asset_shield/features/home/data/services/shedule_service.dart';

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
      final response = await SheduleService().fetchChecklistAnswers(
        scheduleId: _scheduleId,
      );

      final answers = <String, ChecklistAnswerData>{};

      for (final answer in response.data) {
        if (answer.id != null && answer.value != null) {
          answers[answer.id!] = ChecklistAnswerData(
            value: answer.value!,
            note: answer.note ?? '',
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

  /// ---- PUBLIC: Submit all checklist answers ----
  Future<ChecklistAnswerResponse> submitChecklistAnswers() async {
    final current = state.value;
    if (current == null) {
      throw Exception("Checklist not loaded yet");
    }

    final answerList = current.answers.entries.map((e) {
      return ChecklistAnswer(
        questionId: e.key,
        value: e.value.value,
        note: e.value.note,
      );
    }).toList();

    final request = ChecklistAnswerRequest(answers: answerList);

    final response = await SheduleService().submitChecklistAnswers(
      scheduleId: _scheduleId,
      payload: request,
    );

    // Mark submitted
    state = AsyncValue.data(current.copyWith(answersAlreadySubmitted: true));

    return response;
  }

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
