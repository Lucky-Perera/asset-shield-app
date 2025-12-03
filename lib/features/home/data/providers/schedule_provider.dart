import 'dart:developer';
import 'package:asset_shield/features/home/data/models/schedule_v2_response.dart';
import 'package:asset_shield/features/home/data/services/schedule_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'schedule_provider.g.dart';

class ScheduleState {
  final List<ScheduleV2> schedules;
  final Pagination pagination;

  ScheduleState({required this.schedules, required this.pagination});
}

@Riverpod(keepAlive: true)
class Schedules extends _$Schedules {
  @override
  Future<ScheduleState> build() async {
    return fetchSchedules(page: 1, limit: 10);
  }

  Future<ScheduleState> fetchSchedules({
    required int page,
    required int limit,
  }) async {
    final service = ScheduleService();
    final response = await service.fetchSchedules(page: page, limit: limit);
    log(
      'Schedules fetched: ${response.data.pagination.total} (page $page of ${response.data.pagination.totalPages})',
      name: 'SchedulesProvider',
    );
    return ScheduleState(
      schedules: response.data.data,
      pagination: response.data.pagination,
    );
  }

  Future<void> goToPage(int page) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() => fetchSchedules(page: page, limit: 10));
  }

  Future<void> refresh() async {
    final currentPage = state.value?.pagination.page ?? 1;
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(
      () => fetchSchedules(page: currentPage, limit: 10),
    );
  }
}
