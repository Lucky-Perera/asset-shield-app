import 'dart:async';

import 'package:asset_shield/features/home/data/models/schedule_v2_response.dart';
import 'package:asset_shield/features/home/data/services/schedule_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'schedule_provider.g.dart';

class ScheduleState {
  final List<ScheduleV2Response> schedules;
  final Pagination pagination;
  final String? searchQuery;

  ScheduleState({
    required this.schedules,
    required this.pagination,
    this.searchQuery,
  });
}

@Riverpod(keepAlive: true)
class Schedules extends _$Schedules {
  Timer? _debounceTimer;

  @override
  Future<ScheduleState> build() async {
    ref.onDispose(() {
      _debounceTimer?.cancel();
    });
    return fetchSchedules(page: 1, limit: 10);
  }

  Future<ScheduleState> fetchSchedules({
    required int page,
    required int limit,
    String? scheduleId,
  }) async {
    final service = ScheduleService();
    final response = await service.fetchSchedules(
      page: page,
      limit: limit,
      scheduleId: scheduleId,
    );

    return ScheduleState(
      schedules: response.data.data,
      pagination: response.data.pagination,
      searchQuery: scheduleId,
    );
  }

  void search(String query) {
    _debounceTimer?.cancel();

    _debounceTimer = Timer(const Duration(milliseconds: 500), () {
      _performSearch(query);
    });
  }

  Future<void> _performSearch(String query) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(
      () => fetchSchedules(
        page: 1,
        limit: 10,
        scheduleId: query.isEmpty ? null : query,
      ),
    );
  }

  Future<void> goToPage(int page) async {
    final currentSearchQuery = state.value?.searchQuery;
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(
      () =>
          fetchSchedules(page: page, limit: 10, scheduleId: currentSearchQuery),
    );
  }

  Future<void> refresh() async {
    final currentPage = state.value?.pagination.page ?? 1;
    final currentSearchQuery = state.value?.searchQuery;
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(
      () => fetchSchedules(
        page: currentPage,
        limit: 10,
        scheduleId: currentSearchQuery,
      ),
    );
  }
}
