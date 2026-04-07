import 'package:freezed_annotation/freezed_annotation.dart';
import 'schedule_v2_response.dart';

part 'schedule_state.freezed.dart';

@freezed
abstract class ScheduleState with _$ScheduleState {
  const factory ScheduleState({
    required List<ScheduleV2Response> schedules,
    required Pagination pagination,
    String? searchQuery,
  }) = _ScheduleState;
}
