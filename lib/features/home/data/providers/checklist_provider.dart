import 'dart:developer';
import 'package:asset_shield/features/home/data/models/checklist_answer_request.dart';
import 'package:asset_shield/features/home/data/models/checklist_answer_response.dart';
import 'package:asset_shield/features/home/data/services/shedule_service.dart';
import 'package:asset_shield/features/home/data/models/checklist_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'checklist_provider.g.dart';

@Riverpod(keepAlive: false)
class ChecklistNotifier extends _$ChecklistNotifier {
  @override
  ChecklistState build(String scheduleId) {
    // Start with loading state and fetch asynchronously
    Future.microtask(() => fetchChecklistAnswers(scheduleId));
    return const ChecklistState(isLoading: true);
  }

  /// Fetch existing checklist answers for a schedule
  Future<void> fetchChecklistAnswers(String scheduleId) async {
    state = state.copyWith(isLoading: true, error: null);

    try {
      final response = await SheduleService().fetchChecklistAnswers(
        scheduleId: scheduleId,
      );

      log('Fetched ${response.data.length} checklist answers');

      if (response.data.isNotEmpty) {
        // Answers already exist - populate them and set read-only mode
        final answers = <String, ChecklistAnswerData>{};
        for (final answer in response.data) {
          final questionId = answer.id;
          final value = answer.value;
          final note = answer.note;

          if (questionId != null && value != null) {
            answers[questionId] = ChecklistAnswerData(
              value: value,
              note: note ?? '',
            );
            log('Added answer for question $questionId: $value');
          }
        }

        log(
          'Setting answersAlreadySubmitted=true with ${answers.length} answers',
        );
        state = state.copyWith(
          answers: answers,
          answersAlreadySubmitted: true,
          isLoading: false,
        );
        log(
          'State updated: answersAlreadySubmitted=${state.answersAlreadySubmitted}',
        );
      } else {
        log('No answers found - keeping editable');
        state = state.copyWith(
          isLoading: false,
          answersAlreadySubmitted: false,
        );
      }
    } catch (e, stackTrace) {
      log('Error fetching checklist answers: $e');
      log('Stack trace: $stackTrace');
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }

  /// Update a single answer
  void updateAnswer({
    required String questionId,
    required String value,
    required String note,
  }) {
    final updatedAnswers = Map<String, ChecklistAnswerData>.from(state.answers);
    updatedAnswers[questionId] = ChecklistAnswerData(value: value, note: note);
    state = state.copyWith(answers: updatedAnswers);
  }

  /// Submit all checklist answers
  Future<ChecklistAnswerResponse> submitChecklistAnswers(
    String scheduleId,
  ) async {
    final answers = state.answers.entries
        .map(
          (entry) => ChecklistAnswer(
            questionId: entry.key,
            value: entry.value.value,
            note: entry.value.note,
          ),
        )
        .toList();

    final request = ChecklistAnswerRequest(answers: answers);
    final response = await SheduleService().submitChecklistAnswers(
      scheduleId: scheduleId,
      payload: request,
    );

    // Mark as submitted after successful submission
    state = state.copyWith(answersAlreadySubmitted: true);

    return response;
  }

  /// Reset the state (useful when navigating to a new schedule)
  void reset() {
    state = const ChecklistState();
  }

  /// Get answer for a specific question
  ChecklistAnswerData? getAnswer(String questionId) {
    return state.answers[questionId];
  }

  /// Check if all questions are answered
  bool areAllQuestionsAnswered(int totalQuestions) {
    return state.answers.length >= totalQuestions;
  }

  /// Validate all answers have required fields
  String? validateAnswers() {
    for (final entry in state.answers.entries) {
      if (entry.value.value.isEmpty) {
        return 'Please select a response for all questions';
      }
    }
    return null;
  }

  /// Refresh checklist answers (can be called manually if needed)
  Future<void> refresh() async {
    await fetchChecklistAnswers(scheduleId);
  }
}
