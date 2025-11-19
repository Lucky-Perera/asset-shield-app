import 'package:asset_shield/features/home/data/models/schedule_model.dart';
import 'package:asset_shield/features/home/data/services/shedule_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'schedule_provider.g.dart';

@Riverpod(keepAlive: true)
class Schedules extends _$Schedules {
  @override
  Future<List<ScheduleModel>> build() async {
    return fetchSchedules();
  }

  Future<List<ScheduleModel>> fetchSchedules() async {
    final service = SheduleService();
    final response = await service.fetchSchedules();
    return response.data;
  }

  Future<void> refresh() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() => fetchSchedules());
  }
}
