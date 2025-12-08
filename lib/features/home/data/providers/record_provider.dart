import 'dart:developer';

import 'package:asset_shield/features/home/data/models/record_create_request.dart';
import 'package:asset_shield/features/home/data/models/record_with_checklist_response.dart';
import 'package:asset_shield/features/home/data/models/record_state.dart';
import 'package:asset_shield/features/home/data/services/schedule_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'record_provider.g.dart';

@Riverpod(keepAlive: false)
class RecordNotifier extends _$RecordNotifier {
  late final String _scheduleId;
  @override
  Future<RecordState> build(String scheduleId) async {
    _scheduleId = scheduleId;
    return _fetchRecord();
  }

  Future<RecordState> _fetchRecord() async {
    try {
      final res = await ScheduleService().fetchRecordByScheduleId(_scheduleId);
      return RecordState(record: res, isLoading: false);
    } catch (e) {
      log("Error fetching record: $e");
      throw Exception('Failed to load record: $e');
    }
  }

  Future<void> refresh() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() => _fetchRecord());
  }

  /// Create a record with checklist answers using the combined API
  Future<RecordWithChecklistResponse> createRecordWithChecklist(
    RecordCreateRequest payload,
  ) async {
    final response = await ScheduleService().createRecordWithChecklist(
      scheduleId: _scheduleId,
      payload: payload,
    );

    // Update state after submission
    final current = state.value;
    if (current != null) {
      state = AsyncValue.data(current.copyWith(record: response.data.record));
    }

    return response;
  }

  void reset() {
    state = const AsyncValue.data(RecordState());
  }
}
