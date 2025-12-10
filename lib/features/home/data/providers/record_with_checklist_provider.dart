import 'dart:developer';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:asset_shield/features/home/data/models/record_with_checklist_state.dart';
import 'package:asset_shield/features/home/data/models/record_create_request.dart';
import 'package:asset_shield/features/home/data/models/record_with_checklist_response.dart';
import 'package:asset_shield/features/home/data/services/schedule_service.dart';

part 'record_with_checklist_provider.g.dart';

@Riverpod(keepAlive: false)
class RecordWithChecklistNotifier extends _$RecordWithChecklistNotifier {
  late final String _scheduleId;

  @override
  Future<RecordWithChecklistState> build(String scheduleId) async {
    _scheduleId = scheduleId;
    return _fetchRecordWithChecklist();
  }

  Future<RecordWithChecklistState> _fetchRecordWithChecklist() async {
    try {
      final response = await ScheduleService().getRecordWithChecklistAnswers(
        _scheduleId,
      );

      final hasSubmitted = response.data.answeredQuestions.isNotEmpty;

      return RecordWithChecklistState(
        isLoading: false,
        record: response.data.record,
        answeredQuestions: response.data.answeredQuestions,
        hasSubmittedAnswers: hasSubmitted,
      );
    } catch (e) {
      log("Error fetching record with checklist: $e");
      // Return empty state if no record exists yet (not an error)
      return const RecordWithChecklistState(isLoading: false);
    }
  }

  Future<void> refresh() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() => _fetchRecordWithChecklist());
  }

  /// Create a record with checklist answers using the combined API
  Future<RecordWithChecklistResponse> createRecordWithChecklist(
    RecordCreateRequest payload,
  ) async {
    final response = await ScheduleService().createRecordWithChecklist(
      scheduleId: _scheduleId,
      payload: payload,
    );

    // Refresh to load the newly created data
    await refresh();

    return response;
  }

  void reset() {
    state = const AsyncValue.data(RecordWithChecklistState());
  }
}
